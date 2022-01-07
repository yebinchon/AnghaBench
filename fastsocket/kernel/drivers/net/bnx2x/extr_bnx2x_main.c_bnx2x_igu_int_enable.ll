; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_igu_int_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_igu_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@USING_SINGLE_MSIX_FLAG = common dso_local global i32 0, align 4
@USING_MSI_FLAG = common dso_local global i32 0, align 4
@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4
@IGU_PF_CONF_INT_LINE_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_ATTN_BIT_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"write 0x%x to IGU  mode %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_igu_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_igu_int_enable(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @USING_MSIX_FLAG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @USING_SINGLE_MSIX_FLAG, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %5, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @USING_MSI_FLAG, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %6, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %33 = call i32 @REG_RD(%struct.bnx2x* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %1
  %37 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %38 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %44 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %36
  br label %83

55:                                               ; preds = %1
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %64 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %55
  %71 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %3, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %76 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %70, %58
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86, %83
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @REG_WR(%struct.bnx2x* %90, i32 %91, i32 %92)
  %94 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %95 = call i32 @bnx2x_ack_int(%struct.bnx2x* %94)
  br label %96

96:                                               ; preds = %89, %86
  %97 = load i32, i32* @IGU_PF_CONF_FUNC_EN, align 4
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %110

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  br label %110

110:                                              ; preds = %105, %104
  %111 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %104 ], [ %109, %105 ]
  %112 = call i32 @DP(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %101, i8* %111)
  %113 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %114 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @REG_WR(%struct.bnx2x* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %123 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pci_intx(i32 %124, i32 1)
  br label %126

126:                                              ; preds = %121, %110
  %127 = call i32 (...) @barrier()
  %128 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %129 = call i64 @IS_MF(%struct.bnx2x* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %133 = call i32 @BP_VN(%struct.bnx2x* %132)
  %134 = add nsw i32 %133, 4
  %135 = shl i32 1, %134
  %136 = or i32 60943, %135
  store i32 %136, i32* %3, align 4
  %137 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %138 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load i32, i32* %3, align 4
  %144 = or i32 %143, 4352
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %142, %131
  br label %147

146:                                              ; preds = %126
  store i32 65535, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %145
  %148 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %149 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @REG_WR(%struct.bnx2x* %148, i32 %149, i32 %150)
  %152 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %153 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %154 = load i32, i32* %3, align 4
  %155 = call i32 @REG_WR(%struct.bnx2x* %152, i32 %153, i32 %154)
  %156 = call i32 (...) @mmiowb()
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_ack_int(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i8*) #1

declare dso_local i32 @pci_intx(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

declare dso_local i32 @mmiowb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
