; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_smtc_configure_tlb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_smtc.c_smtc_configure_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MAX_SMTC_TLBS = common dso_local global i32 0, align 4
@MAX_SMTC_ASIDS = common dso_local global i32 0, align 4
@smtc_live_asid = common dso_local global i64** null, align 8
@MVPCONF0_PVPE = common dso_local global i64 0, align 8
@MVPCONF0_PVPE_SHIFT = common dso_local global i64 0, align 8
@MVPCONF0_TLBS = common dso_local global i64 0, align 8
@nostlb = common dso_local global i32 0, align 4
@MVPCONF0_PTLBE = common dso_local global i64 0, align 8
@MVPCONF0_PTLBE_SHIFT = common dso_local global i64 0, align 8
@TCHALT_H = common dso_local global i32 0, align 4
@MVPCONTROL_VPC = common dso_local global i32 0, align 4
@MIPS_CONF_MT = common dso_local global i32 0, align 4
@MVPCONTROL_STLB = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@cpu_data = common dso_local global %struct.TYPE_4__* null, align 8
@SMTC_TLB_SHARED = common dso_local global i32 0, align 4
@smtc_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"TLB of %d entry pairs shared by %d VPEs\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"WARNING: TLB Not Sharable on SMTC Boot!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smtc_configure_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smtc_configure_tlb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %28, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @MAX_SMTC_TLBS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MAX_SMTC_ASIDS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i64**, i64*** @smtc_live_asid, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64*, i64** %16, i64 %18
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %11

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6

31:                                               ; preds = %6
  %32 = call i64 (...) @read_c0_mvpconf0()
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @MVPCONF0_PVPE, align 8
  %35 = and i64 %33, %34
  %36 = load i64, i64* @MVPCONF0_PVPE_SHIFT, align 8
  %37 = lshr i64 %35, %36
  %38 = add i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %124

41:                                               ; preds = %31
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @MVPCONF0_TLBS, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %121

46:                                               ; preds = %41
  %47 = load i32, i32* @nostlb, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %121, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @MVPCONF0_PTLBE, align 8
  %52 = and i64 %50, %51
  %53 = load i64, i64* @MVPCONF0_PTLBE_SHIFT, align 8
  %54 = lshr i64 %52, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %49
  %58 = call i32 @settc(i32 1)
  %59 = load i32, i32* @TCHALT_H, align 4
  %60 = call i32 @write_tc_c0_tchalt(i32 %59)
  %61 = call i32 (...) @mips_ihb()
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %96, %57
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @write_tc_c0_tcbind(i32 %67)
  %69 = call i32 (...) @read_c0_mvpcontrol()
  %70 = load i32, i32* @MVPCONTROL_VPC, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = call i32 @write_c0_mvpcontrol(i32 %72)
  %74 = call i32 (...) @mips_ihb()
  %75 = call i32 (...) @read_vpe_c0_config()
  %76 = load i32, i32* @MIPS_CONF_MT, align 4
  %77 = and i32 %75, %76
  %78 = ashr i32 %77, 7
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %90

80:                                               ; preds = %66
  %81 = call i64 (...) @read_vpe_c0_config1()
  store i64 %81, i64* %5, align 8
  %82 = load i64, i64* %5, align 8
  %83 = lshr i64 %82, 25
  %84 = and i64 %83, 63
  %85 = add i64 %84, 1
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %80, %66
  %91 = call i32 (...) @read_c0_mvpcontrol()
  %92 = load i32, i32* @MVPCONTROL_VPC, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @write_c0_mvpcontrol(i32 %93)
  %95 = call i32 (...) @mips_ihb()
  br label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %62

99:                                               ; preds = %62
  br label %100

100:                                              ; preds = %99, %49
  %101 = call i32 (...) @read_c0_mvpcontrol()
  %102 = load i32, i32* @MVPCONTROL_STLB, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @write_c0_mvpcontrol(i32 %103)
  %105 = call i32 (...) @ehb()
  %106 = load i32, i32* %2, align 4
  %107 = icmp sgt i32 %106, 64
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 64, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %100
  %110 = load i32, i32* %2, align 4
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 0), align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpu_data, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load i32, i32* @SMTC_TLB_SHARED, align 4
  %115 = load i32, i32* @smtc_status, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* @smtc_status, align 4
  %117 = call i32 (...) @local_flush_tlb_all()
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %119)
  br label %123

121:                                              ; preds = %46, %41
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %109
  br label %124

124:                                              ; preds = %123, %31
  ret void
}

declare dso_local i64 @read_c0_mvpconf0(...) #1

declare dso_local i32 @settc(i32) #1

declare dso_local i32 @write_tc_c0_tchalt(i32) #1

declare dso_local i32 @mips_ihb(...) #1

declare dso_local i32 @write_tc_c0_tcbind(i32) #1

declare dso_local i32 @write_c0_mvpcontrol(i32) #1

declare dso_local i32 @read_c0_mvpcontrol(...) #1

declare dso_local i32 @read_vpe_c0_config(...) #1

declare dso_local i64 @read_vpe_c0_config1(...) #1

declare dso_local i32 @ehb(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
