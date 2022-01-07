; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_ram_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_ram_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EPB_IB_UC_CS_SHF = common dso_local global i64 0, align 8
@kr_ibsd_epb_transaction_reg = common dso_local global i32 0, align 4
@EPB_PCIE_UC_CS_SHF = common dso_local global i64 0, align 8
@kr_pciesd_epb_transaction_reg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"Rd\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Wr\00", align 1
@EPB_TRANS_TRIES = common dso_local global i32 0, align 4
@EPB_TRANS_RDY = common dso_local global i32 0, align 4
@EPB_UC_CTL = common dso_local global i32 0, align 4
@EPB_ROM_R = common dso_local global i32 0, align 4
@EPB_ROM_W = common dso_local global i32 0, align 4
@EPB_MADDRH = common dso_local global i32 0, align 4
@EPB_MADDRL = common dso_local global i32 0, align 4
@EPB_ROMDATA = common dso_local global i32 0, align 4
@EPB_RD = common dso_local global i32 0, align 4
@EPB_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32*, i32, i32)* @qib_sd7220_ram_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_sd7220_ram_xfer(%struct.qib_devdata* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %36 [
    i32 130, label %26
    i32 129, label %31
    i32 128, label %31
  ]

26:                                               ; preds = %6
  %27 = load i64, i64* @EPB_IB_UC_CS_SHF, align 8
  %28 = shl i64 1, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* @kr_ibsd_epb_transaction_reg, align 4
  store i32 %30, i32* %14, align 4
  br label %37

31:                                               ; preds = %6, %6
  %32 = load i64, i64* @EPB_PCIE_UC_CS_SHF, align 8
  %33 = shl i64 1, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* @kr_pciesd_epb_transaction_reg, align 4
  store i32 %35, i32* %14, align 4
  br label %37

36:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %216

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %41, i8** %23, align 8
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %22, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @epb_access(%struct.qib_devdata* %48, i32 %49, i32 1)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %22, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  store i32 -1, i32* %7, align 4
  br label %216

60:                                               ; preds = %37
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 8191
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* @EPB_TRANS_TRIES, align 4
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %78, %60
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @qib_read_kreg32(%struct.qib_devdata* %68, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* @EPB_TRANS_RDY, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67
  %77 = call i32 @udelay(i32 5)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %18, align 4
  br label %64

81:                                               ; preds = %75, %64
  store i32 0, i32* %19, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %197

84:                                               ; preds = %81
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @EPB_UC_CTL, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @EPB_ROM_R, align 4
  br label %94

92:                                               ; preds = %84
  %93 = load i32, i32* @EPB_ROM_W, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = or i32 %87, %95
  store i32 %96, i32* %15, align 4
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @epb_trans(%struct.qib_devdata* %97, i32 %98, i32 %99, i32* %15)
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %186, %94
  %102 = load i32, i32* %18, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp slt i32 %105, %106
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %110, label %189

110:                                              ; preds = %108
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %148, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %114, %115
  %117 = ashr i32 %116, 8
  store i32 %117, i32* %24, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @EPB_MADDRH, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %24, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %15, align 4
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @epb_trans(%struct.qib_devdata* %123, i32 %124, i32 %125, i32* %15)
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  br label %189

130:                                              ; preds = %113
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %19, align 4
  %133 = add nsw i32 %131, %132
  %134 = and i32 %133, 255
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @EPB_MADDRL, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* %24, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* %15, align 4
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @epb_trans(%struct.qib_devdata* %140, i32 %141, i32 %142, i32* %15)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %189

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %147, %110
  %149 = load i32, i32* %13, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @EPB_ROMDATA, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @EPB_RD, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %15, align 4
  br label %167

157:                                              ; preds = %148
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* @EPB_ROMDATA, align 4
  %160 = or i32 %158, %159
  %161 = load i32*, i32** %11, align 8
  %162 = load i32, i32* %19, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %160, %165
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %157, %151
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @epb_trans(%struct.qib_devdata* %168, i32 %169, i32 %170, i32* %15)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp sle i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %189

175:                                              ; preds = %167
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @EPB_DATA_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load i32*, i32** %11, align 8
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %178, %175
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  br label %101

189:                                              ; preds = %174, %146, %129, %108
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* @EPB_UC_CTL, align 4
  %192 = or i32 %190, %191
  store i32 %192, i32* %15, align 4
  %193 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @epb_trans(%struct.qib_devdata* %193, i32 %194, i32 %195, i32* %15)
  store i32 %196, i32* %18, align 4
  br label %197

197:                                              ; preds = %189, %81
  %198 = load i32, i32* %19, align 4
  store i32 %198, i32* %21, align 4
  %199 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @epb_access(%struct.qib_devdata* %199, i32 %200, i32 -1)
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i32 -1, i32* %21, align 4
  br label %204

204:                                              ; preds = %203, %197
  %205 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %206 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %205, i32 0, i32 0
  %207 = load %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  %209 = load i64, i64* %22, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load i32, i32* %18, align 4
  %212 = icmp sle i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %204
  store i32 -1, i32* %21, align 4
  br label %214

214:                                              ; preds = %213, %204
  %215 = load i32, i32* %21, align 4
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %214, %53, %36
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @epb_access(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @epb_trans(%struct.qib_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
