; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_initcshw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_bas-gigaset.c_gigaset_initcshw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bas_cardstate* }
%struct.bas_cardstate = type { i32, i32, i32, i32, i64, i64, i32, i64, i32*, i32*, i32*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@IP_MSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*)* @gigaset_initcshw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_initcshw(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca %struct.bas_cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kmalloc(i32 80, i32 %5)
  %7 = bitcast i8* %6 to %struct.bas_cardstate*
  store %struct.bas_cardstate* %7, %struct.bas_cardstate** %4, align 8
  %8 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %9 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.bas_cardstate* %7, %struct.bas_cardstate** %10, align 8
  %11 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %12 = icmp ne %struct.bas_cardstate* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

15:                                               ; preds = %1
  %16 = load i32, i32* @IP_MSGSIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  %19 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %20 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %19, i32 0, i32 11
  store i8* %18, i8** %20, align 8
  %21 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %22 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %21, i32 0, i32 11
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %27 = call i32 @kfree(%struct.bas_cardstate* %26)
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

29:                                               ; preds = %15
  %30 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %31 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %30, i32 0, i32 10
  store i32* null, i32** %31, align 8
  %32 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %33 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %32, i32 0, i32 9
  store i32* null, i32** %33, align 8
  %34 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %35 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %34, i32 0, i32 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %37 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %39 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %38, i32 0, i32 6
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %42 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %44 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %46 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %45, i32 0, i32 3
  %47 = call i32 @init_timer(i32* %46)
  %48 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %49 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %48, i32 0, i32 2
  %50 = call i32 @init_timer(i32* %49)
  %51 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %52 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %51, i32 0, i32 1
  %53 = call i32 @init_timer(i32* %52)
  %54 = load %struct.bas_cardstate*, %struct.bas_cardstate** %4, align 8
  %55 = getelementptr inbounds %struct.bas_cardstate, %struct.bas_cardstate* %54, i32 0, i32 0
  %56 = call i32 @init_waitqueue_head(i32* %55)
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %29, %25, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.bas_cardstate*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
