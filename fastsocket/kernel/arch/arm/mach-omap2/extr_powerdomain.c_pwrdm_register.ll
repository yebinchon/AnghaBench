; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_powerdomain.c_pwrdm_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pwrdm_rwlock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@pwrdm_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"powerdomain: registered %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwrdm_register(%struct.powerdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powerdomain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %9 = icmp ne %struct.powerdomain* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %15 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @omap_chip_is(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @write_lock_irqsave(i32* @pwrdm_rwlock, i64 %23)
  %25 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %26 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @_pwrdm_lookup(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EEXIST, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %22
  %34 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %35 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %34, i32 0, i32 1
  %36 = call i32 @list_add(i32* %35, i32* @pwrdm_list)
  %37 = load %struct.powerdomain*, %struct.powerdomain** %3, align 8
  %38 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %30
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @write_unlock_irqrestore(i32* @pwrdm_rwlock, i64 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %19, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @omap_chip_is(i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @_pwrdm_lookup(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
