; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c___fcpnp_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c___fcpnp_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_bcs = type { %struct.TYPE_4__, i64, %struct.fritz_adapter* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8, i8, i8 }
%struct.fritz_adapter = type { i64 }

@AVM_IDX_HDLC_2 = common dso_local global i8 0, align 1
@AVM_IDX_HDLC_1 = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [21 x i8] c"hdlc %c wr%x ctrl %x\00", align 1
@AVM_INDEX = common dso_local global i64 0, align 8
@AVM_DATA = common dso_local global i64 0, align 8
@HDLC_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_bcs*, i32)* @__fcpnp_write_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fcpnp_write_ctrl(%struct.fritz_bcs* %0, i32 %1) #0 {
  %3 = alloca %struct.fritz_bcs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fritz_adapter*, align 8
  %6 = alloca i8, align 1
  store %struct.fritz_bcs* %0, %struct.fritz_bcs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %8 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %7, i32 0, i32 2
  %9 = load %struct.fritz_adapter*, %struct.fritz_adapter** %8, align 8
  store %struct.fritz_adapter* %9, %struct.fritz_adapter** %5, align 8
  %10 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %11 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8, i8* @AVM_IDX_HDLC_2, align 1
  %16 = zext i8 %15 to i32
  br label %20

17:                                               ; preds = %2
  %18 = load i8, i8* @AVM_IDX_HDLC_1, align 1
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ %16, %14 ], [ %19, %17 ]
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %24 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 65, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %29 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DBG(i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %27, i32 %31)
  %33 = load i8, i8* %6, align 1
  %34 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AVM_INDEX, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i8 zeroext %33, i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %20
  %44 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %45 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AVM_DATA, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i64, i64* @HDLC_STATUS, align 8
  %55 = add nsw i64 %53, %54
  %56 = add nsw i64 %55, 2
  %57 = call i32 @outb(i8 zeroext %48, i64 %56)
  br label %58

58:                                               ; preds = %43, %20
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %64 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i8, i8* %66, align 1
  %68 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AVM_DATA, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i64, i64* @HDLC_STATUS, align 8
  %74 = add nsw i64 %72, %73
  %75 = add nsw i64 %74, 1
  %76 = call i32 @outb(i8 zeroext %67, i64 %75)
  br label %77

77:                                               ; preds = %62, %58
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.fritz_bcs*, %struct.fritz_bcs** %3, align 8
  %83 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i8, i8* %85, align 2
  %87 = load %struct.fritz_adapter*, %struct.fritz_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.fritz_adapter, %struct.fritz_adapter* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AVM_DATA, align 8
  %91 = add nsw i64 %89, %90
  %92 = load i64, i64* @HDLC_STATUS, align 8
  %93 = add nsw i64 %91, %92
  %94 = add nsw i64 %93, 0
  %95 = call i32 @outb(i8 zeroext %86, i64 %94)
  br label %96

96:                                               ; preds = %81, %77
  ret void
}

declare dso_local i32 @DBG(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
