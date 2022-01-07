; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_hw_mr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_reg_nsmr = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i8* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.ocrdma_reg_nsmr_rsp = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_REGISTER_NSMR = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_NUM_PBL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_REMOTE_WR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_REMOTE_RD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_LOCAL_WR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_REMOTE_ATOMIC_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_BIND_MEMWIN_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_LAST_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MIN_HPAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_HPAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*, i32, i32, i32, i32)* @ocrdma_mbx_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_reg_mr(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_dev*, align 8
  %9 = alloca %struct.ocrdma_hw_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocrdma_reg_nsmr*, align 8
  %17 = alloca %struct.ocrdma_reg_nsmr_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %8, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @OCRDMA_CMD_REGISTER_NSMR, align 4
  %21 = call %struct.ocrdma_reg_nsmr* @ocrdma_init_emb_mqe(i32 %20, i32 48)
  store %struct.ocrdma_reg_nsmr* %21, %struct.ocrdma_reg_nsmr** %16, align 8
  %22 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %23 = icmp ne %struct.ocrdma_reg_nsmr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %203

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %30 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCRDMA_REG_NSMR_NUM_PBL_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %36 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %38 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OCRDMA_REG_NSMR_REMOTE_WR_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %43 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %47 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OCRDMA_REG_NSMR_REMOTE_RD_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %52 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %56 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @OCRDMA_REG_NSMR_LOCAL_WR_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %61 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %65 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @OCRDMA_REG_NSMR_REMOTE_ATOMIC_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %70 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %74 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @OCRDMA_REG_NSMR_BIND_MEMWIN_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %79 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @OCRDMA_REG_NSMR_LAST_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %86 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %90 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @OCRDMA_MIN_HPAGE_SIZE, align 4
  %93 = sdiv i32 %91, %92
  %94 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %95 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %99 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @OCRDMA_MIN_HPAGE_SIZE, align 4
  %102 = sdiv i32 %100, %101
  %103 = load i32, i32* @OCRDMA_REG_NSMR_HPAGE_SIZE_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %106 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %110 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %113 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %115 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i8* @upper_32_bits(i32 %116)
  %118 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %119 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %118, i32 0, i32 8
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %121 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %124 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %126 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @upper_32_bits(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %131 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %133 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %136 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %138 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @upper_32_bits(i32 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %143 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 8
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %180, %27
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %183

148:                                              ; preds = %144
  %149 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %150 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %149, i32 0, i32 12
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %158 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %157, i32 0, i32 7
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %156, i32* %163, align 8
  %164 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %165 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %164, i32 0, i32 12
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @upper_32_bits(i32 %171)
  %173 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %174 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %173, i32 0, i32 7
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i8* %172, i8** %179, align 8
  br label %180

180:                                              ; preds = %148
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %15, align 4
  br label %144

183:                                              ; preds = %144
  %184 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %185 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %186 = bitcast %struct.ocrdma_reg_nsmr* %185 to %struct.ocrdma_mqe*
  %187 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %184, %struct.ocrdma_mqe* %186)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  br label %199

191:                                              ; preds = %183
  %192 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %193 = bitcast %struct.ocrdma_reg_nsmr* %192 to %struct.ocrdma_reg_nsmr_rsp*
  store %struct.ocrdma_reg_nsmr_rsp* %193, %struct.ocrdma_reg_nsmr_rsp** %17, align 8
  %194 = load %struct.ocrdma_reg_nsmr_rsp*, %struct.ocrdma_reg_nsmr_rsp** %17, align 8
  %195 = getelementptr inbounds %struct.ocrdma_reg_nsmr_rsp, %struct.ocrdma_reg_nsmr_rsp* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %198 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %197, i32 0, i32 11
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %191, %190
  %200 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %201 = call i32 @kfree(%struct.ocrdma_reg_nsmr* %200)
  %202 = load i32, i32* %14, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %199, %24
  %204 = load i32, i32* %7, align 4
  ret i32 %204
}

declare dso_local %struct.ocrdma_reg_nsmr* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_reg_nsmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
