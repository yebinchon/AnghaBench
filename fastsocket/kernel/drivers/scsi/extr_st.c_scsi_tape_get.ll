; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_scsi_tape_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_scsi_tape_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, i32 }

@st_ref_mutex = common dso_local global i32 0, align 4
@st_dev_arr_lock = common dso_local global i32 0, align 4
@st_dev_max = common dso_local global i32 0, align 4
@scsi_tapes = common dso_local global %struct.scsi_tape** null, align 8
@scsi_tape_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scsi_tape* (i32)* @scsi_tape_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scsi_tape* @scsi_tape_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_tape*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.scsi_tape* null, %struct.scsi_tape** %3, align 8
  %4 = call i32 @mutex_lock(i32* @st_ref_mutex)
  %5 = call i32 @write_lock(i32* @st_dev_arr_lock)
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @st_dev_max, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.scsi_tape**, %struct.scsi_tape*** @scsi_tapes, align 8
  %11 = icmp ne %struct.scsi_tape** %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.scsi_tape**, %struct.scsi_tape*** @scsi_tapes, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.scsi_tape*, %struct.scsi_tape** %13, i64 %15
  %17 = load %struct.scsi_tape*, %struct.scsi_tape** %16, align 8
  store %struct.scsi_tape* %17, %struct.scsi_tape** %3, align 8
  br label %18

18:                                               ; preds = %12, %9, %1
  %19 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %20 = icmp ne %struct.scsi_tape* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %44

22:                                               ; preds = %18
  %23 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %23, i32 0, i32 0
  %25 = call i32 @kref_get(i32* %24)
  %26 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %27 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %39

31:                                               ; preds = %22
  %32 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @scsi_device_get(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %39

38:                                               ; preds = %31
  br label %44

39:                                               ; preds = %37, %30
  %40 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %40, i32 0, i32 0
  %42 = load i32, i32* @scsi_tape_release, align 4
  %43 = call i32 @kref_put(i32* %41, i32 %42)
  store %struct.scsi_tape* null, %struct.scsi_tape** %3, align 8
  br label %44

44:                                               ; preds = %39, %38, %21
  %45 = call i32 @write_unlock(i32* @st_dev_arr_lock)
  %46 = call i32 @mutex_unlock(i32* @st_ref_mutex)
  %47 = load %struct.scsi_tape*, %struct.scsi_tape** %3, align 8
  ret %struct.scsi_tape* %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i64 @scsi_device_get(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
