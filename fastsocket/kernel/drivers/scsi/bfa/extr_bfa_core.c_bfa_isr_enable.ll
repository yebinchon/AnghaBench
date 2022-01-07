; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_isr_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_isr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@__HFN_INT_ERR_MASK_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_FN0_MASK_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_FN1_MASK_CT2 = common dso_local global i32 0, align 4
@__HFN_INT_ERR_MASK = common dso_local global i32 0, align 4
@__HFN_INT_FN0_MASK = common dso_local global i32 0, align 4
@__HFN_INT_FN1_MASK = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_isr_enable(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %5, i32 0, i32 3
  %7 = call i32 @bfa_ioc_portid(%struct.TYPE_11__* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %10 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %9, i32 0, i32 3
  %11 = call i32 @bfa_ioc_pcifn(%struct.TYPE_11__* %10)
  %12 = call i32 @bfa_trc(%struct.bfa_s* %8, i32 %11)
  %13 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @bfa_trc(%struct.bfa_s* %13, i32 %14)
  %16 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %17 = call i32 @bfa_msix_ctrl_install(%struct.bfa_s* %16)
  %18 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @bfa_asic_id_ct2(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %1
  %26 = load i32, i32* @__HFN_INT_ERR_MASK_CT2, align 4
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @__HFN_INT_FN0_MASK_CT2, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @__HFN_INT_FN1_MASK_CT2, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load i32, i32* @__HFN_INT_ERR_MASK, align 4
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @__HFN_INT_FN0_MASK, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @__HFN_INT_FN1_MASK, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %33
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %52 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @writel(i32 %50, i32 %55)
  %57 = load i32, i32* %3, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %60 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @writel(i32 %58, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %68 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %71 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %72 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @bfa_isr_mode_set(%struct.bfa_s* %70, i32 %76)
  %78 = load i32, i32* @BFA_TRUE, align 4
  %79 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %80 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  ret void
}

declare dso_local i32 @bfa_ioc_portid(%struct.TYPE_11__*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_ioc_pcifn(%struct.TYPE_11__*) #1

declare dso_local i32 @bfa_msix_ctrl_install(%struct.bfa_s*) #1

declare dso_local i64 @bfa_asic_id_ct2(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_isr_mode_set(%struct.bfa_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
