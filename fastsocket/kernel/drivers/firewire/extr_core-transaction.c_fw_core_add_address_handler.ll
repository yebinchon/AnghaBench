; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_core_add_address_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_core_add_address_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_address_handler = type { i32, i32, i32 }
%struct.fw_address_region = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@address_handler_lock = common dso_local global i32 0, align 4
@address_handler_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_core_add_address_handler(%struct.fw_address_handler* %0, %struct.fw_address_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_address_handler*, align 8
  %5 = alloca %struct.fw_address_region*, align 8
  %6 = alloca %struct.fw_address_handler*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fw_address_handler* %0, %struct.fw_address_handler** %4, align 8
  store %struct.fw_address_region* %1, %struct.fw_address_region** %5, align 8
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %12 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = and i64 %14, -281474976710653
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %2
  %18 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %19 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, -281474976710653
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %17
  %25 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %26 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %29 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %24
  %33 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %34 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %40 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %32, %24, %17, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %93

46:                                               ; preds = %38
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @spin_lock_irqsave(i32* @address_handler_lock, i64 %47)
  %49 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %50 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %53 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %88, %46
  %55 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %56 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %59 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %63 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %54
  %67 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %68 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %71 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.fw_address_handler* @lookup_overlapping_address_handler(i32* @address_handler_list, i32 %69, i32 %72)
  store %struct.fw_address_handler* %73, %struct.fw_address_handler** %6, align 8
  %74 = load %struct.fw_address_handler*, %struct.fw_address_handler** %6, align 8
  %75 = icmp ne %struct.fw_address_handler* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load %struct.fw_address_handler*, %struct.fw_address_handler** %6, align 8
  %78 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %81 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %88

84:                                               ; preds = %66
  %85 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %86 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %85, i32 0, i32 2
  %87 = call i32 @list_add_tail(i32* %86, i32* @address_handler_list)
  store i32 0, i32* %8, align 4
  br label %89

88:                                               ; preds = %76
  br label %54

89:                                               ; preds = %84, %54
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* @address_handler_lock, i64 %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %43
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.fw_address_handler* @lookup_overlapping_address_handler(i32*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
