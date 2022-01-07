; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_private = type { i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MON_MSGLIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mon_private* ()* @mon_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mon_private* @mon_alloc_mem() #0 {
  %1 = alloca %struct.mon_private*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.mon_private*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kzalloc(i32 8, i32 %4)
  %6 = bitcast i8* %5 to %struct.mon_private*
  store %struct.mon_private* %6, %struct.mon_private** %3, align 8
  %7 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %8 = icmp ne %struct.mon_private* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store %struct.mon_private* null, %struct.mon_private** %1, align 8
  br label %41

10:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @MON_MSGLIM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 4, i32 %16)
  %18 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %19 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %17, i8** %23, align 8
  %24 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %25 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %15
  %33 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  %34 = call i32 @mon_free_mem(%struct.mon_private* %33)
  store %struct.mon_private* null, %struct.mon_private** %1, align 8
  br label %41

35:                                               ; preds = %15
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.mon_private*, %struct.mon_private** %3, align 8
  store %struct.mon_private* %40, %struct.mon_private** %1, align 8
  br label %41

41:                                               ; preds = %39, %32, %9
  %42 = load %struct.mon_private*, %struct.mon_private** %1, align 8
  ret %struct.mon_private* %42
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mon_free_mem(%struct.mon_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
