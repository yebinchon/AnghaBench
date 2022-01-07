; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_comminit.c_aac_send_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_comminit.c_aac_send_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }
%struct.fib = type { i32 }
%struct.aac_close = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@VM_CloseAll = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@FsaNormal = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_send_shutdown(%struct.aac_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_close*, align 8
  %6 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %3, align 8
  %7 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %8 = call %struct.fib* @aac_fib_alloc(%struct.aac_dev* %7)
  store %struct.fib* %8, %struct.fib** %4, align 8
  %9 = load %struct.fib*, %struct.fib** %4, align 8
  %10 = icmp ne %struct.fib* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.fib*, %struct.fib** %4, align 8
  %16 = call i32 @aac_fib_init(%struct.fib* %15)
  %17 = load %struct.fib*, %struct.fib** %4, align 8
  %18 = call i64 @fib_data(%struct.fib* %17)
  %19 = inttoptr i64 %18 to %struct.aac_close*
  store %struct.aac_close* %19, %struct.aac_close** %5, align 8
  %20 = load i32, i32* @VM_CloseAll, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = load %struct.aac_close*, %struct.aac_close** %5, align 8
  %23 = getelementptr inbounds %struct.aac_close, %struct.aac_close* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = call i8* @cpu_to_le32(i32 -2)
  %25 = load %struct.aac_close*, %struct.aac_close** %5, align 8
  %26 = getelementptr inbounds %struct.aac_close, %struct.aac_close* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @ContainerCommand, align 4
  %28 = load %struct.fib*, %struct.fib** %4, align 8
  %29 = load i32, i32* @FsaNormal, align 4
  %30 = call i32 @aac_fib_send(i32 %27, %struct.fib* %28, i32 16, i32 %29, i32 -2, i32 1, i32* null, i32* null)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %struct.fib*, %struct.fib** %4, align 8
  %35 = call i32 @aac_fib_complete(%struct.fib* %34)
  br label %36

36:                                               ; preds = %33, %14
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.fib*, %struct.fib** %4, align 8
  %43 = call i32 @aac_fib_free(%struct.fib* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.fib* @aac_fib_alloc(%struct.aac_dev*) #1

declare dso_local i32 @aac_fib_init(%struct.fib*) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @aac_fib_send(i32, %struct.fib*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

declare dso_local i32 @aac_fib_free(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
