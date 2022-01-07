; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_interface.c_gigaset_if_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_interface.c_gigaset_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32*, i32, i32, %struct.gigaset_driver* }
%struct.gigaset_driver = type { i32, i32 }

@if_wake = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not register device to the tty subsystem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_if_init(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.gigaset_driver*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 4
  %6 = load %struct.gigaset_driver*, %struct.gigaset_driver** %5, align 8
  store %struct.gigaset_driver* %6, %struct.gigaset_driver** %3, align 8
  %7 = load %struct.gigaset_driver*, %struct.gigaset_driver** %3, align 8
  %8 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 3
  %15 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %16 = ptrtoint %struct.cardstate* %15 to i64
  %17 = call i32 @tasklet_init(i32* %14, i32* @if_wake, i64 %16)
  %18 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.gigaset_driver*, %struct.gigaset_driver** %3, align 8
  %22 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @tty_register_device(i32 %23, i32 %26, i32* null)
  %28 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %29 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @IS_ERR(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %12
  %36 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %40 = call i32 @dev_set_drvdata(i32* %38, %struct.cardstate* %39)
  br label %45

41:                                               ; preds = %12
  %42 = call i32 @pr_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %44 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %11
  ret void
}

declare dso_local i32 @tasklet_init(i32*, i32*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @tty_register_device(i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.cardstate*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
