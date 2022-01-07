; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_register = type { i32, i32, i32, i64, i64, i64 }

@sclp_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@sclp_reg_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_register(%struct.sclp_register* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_register*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sclp_register* %0, %struct.sclp_register** %3, align 8
  %8 = call i32 (...) @sclp_init()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %14)
  %16 = call i32 @__sclp_get_mask(i32* %5, i32* %6)
  %17 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %18 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %13
  %24 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %25 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23, %13
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %23
  %36 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %37 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %39 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %41 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %43 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %42, i32 0, i32 2
  %44 = call i32 @list_add(i32* %43, i32* @sclp_reg_list)
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %45)
  %47 = call i32 @sclp_init_mask(i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %35
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %51)
  %53 = load %struct.sclp_register*, %struct.sclp_register** %3, align 8
  %54 = getelementptr inbounds %struct.sclp_register, %struct.sclp_register* %53, i32 0, i32 2
  %55 = call i32 @list_del(i32* %54)
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %56)
  br label %58

58:                                               ; preds = %50, %35
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %30, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @sclp_init(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sclp_get_mask(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @sclp_init_mask(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
