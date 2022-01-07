; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sis900.c_sis900_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sis900.c_sis900_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sis900_private = type { i64 }

@TxRCMP = common dso_local global i32 0, align 4
@RxRCMP = common dso_local global i32 0, align 4
@ier = common dso_local global i64 0, align 8
@imr = common dso_local global i64 0, align 8
@rfcr = common dso_local global i64 0, align 8
@RxRESET = common dso_local global i32 0, align 4
@TxRESET = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@cr = common dso_local global i64 0, align 8
@isr = common dso_local global i64 0, align 8
@SIS635A_900_REV = common dso_local global i64 0, align 8
@SIS900B_900_REV = common dso_local global i64 0, align 8
@PESEL = common dso_local global i32 0, align 4
@RND_CNT = common dso_local global i32 0, align 4
@cfg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sis900_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis900_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sis900_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.sis900_private* @netdev_priv(%struct.net_device* %7)
  store %struct.sis900_private* %8, %struct.sis900_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @TxRCMP, align 4
  %13 = load i32, i32* @RxRCMP, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @ier, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outl(i32 0, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @imr, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @outl(i32 0, i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @rfcr, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outl(i32 0, i64 %25)
  %27 = load i32, i32* @RxRESET, align 4
  %28 = load i32, i32* @TxRESET, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @RESET, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @cr, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inl(i64 %34)
  %36 = or i32 %31, %35
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @cr, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outl(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %50, %1
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = icmp slt i32 %45, 1000
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i1 [ false, %41 ], [ %47, %44 ]
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load i64, i64* @isr, align 8
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inl(i64 %53)
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %41

59:                                               ; preds = %48
  %60 = load %struct.sis900_private*, %struct.sis900_private** %3, align 8
  %61 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SIS635A_900_REV, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.sis900_private*, %struct.sis900_private** %3, align 8
  %67 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SIS900B_900_REV, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @PESEL, align 4
  %73 = load i32, i32* @RND_CNT, align 4
  %74 = or i32 %72, %73
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @cfg, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outl(i32 %74, i64 %77)
  br label %85

79:                                               ; preds = %65
  %80 = load i32, i32* @PESEL, align 4
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @cfg, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outl(i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %79, %71
  ret void
}

declare dso_local %struct.sis900_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
