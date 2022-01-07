; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_errors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PORT_IRQ_TF_ERR = common dso_local global i32 0, align 4
@PORT_IRQ_IF_ERR = common dso_local global i32 0, align 4
@PORT_IRQ_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Clearing PxSERR.DIAG.x\0A\00", align 1
@PORT_SCR_ERR = common dso_local global i64 0, align 8
@PORT_IRQ_PHYRDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Clearing PxSERR.DIAG.n\0A\00", align 1
@PORT_IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Port stat errors %x unhandled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i32)* @mtip_process_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_process_errors(%struct.driver_data* %0, i32 %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PORT_IRQ_TF_ERR, align 4
  %7 = load i32, i32* @PORT_IRQ_IF_ERR, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %14 = call i32 @mtip_handle_tfe(%struct.driver_data* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PORT_IRQ_CONNECT, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  %22 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %23 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_warn(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %28 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PORT_SCR_ERR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 67108864, i64 %33)
  br label %35

35:                                               ; preds = %21, %15
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PORT_IRQ_PHYRDY, align 4
  %38 = and i32 %36, %37
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %43 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_warn(i32* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %48 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PORT_SCR_ERR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 65536, i64 %53)
  br label %55

55:                                               ; preds = %41, %35
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PORT_IRQ_HANDLED, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %64 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @PORT_IRQ_HANDLED, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 (i32*, i8*, ...) @dev_warn(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %62, %55
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mtip_handle_tfe(%struct.driver_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
