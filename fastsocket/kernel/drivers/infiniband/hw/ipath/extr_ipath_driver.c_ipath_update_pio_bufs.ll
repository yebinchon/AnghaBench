; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_update_pio_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_driver.c_ipath_update_pio_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64*, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Update shadow pioavail, but regs_dma NULL!\0A\00", align 1
@ipath_debug = common dso_local global i32 0, align 4
@__IPATH_VERBDBG = common dso_local global i32 0, align 4
@PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Refill avail, dma0=%llx shad0=%lx, d1=%llx s1=%lx, d2=%llx s2=%lx, d3=%llx s3=%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"2nd group, dma4=%llx shad4=%lx, d5=%llx s5=%lx, d6=%llx s6=%lx, d7=%llx s7=%lx\0A\00", align 1
@ipath_pioavail_lock = common dso_local global i32 0, align 4
@IPATH_SWAP_PIOBUFS = common dso_local global i32 0, align 4
@INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_update_pio_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_update_pio_bufs(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = call i32 @ipath_dbg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %213

21:                                               ; preds = %1
  %22 = load i32, i32* @ipath_debug, align 4
  %23 = load i32, i32* @__IPATH_VERBDBG, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %21
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %6, align 8
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %7, align 8
  %33 = load i32, i32* @PKT, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load volatile i32, i32* %35, align 4
  %37 = call i32 @le64_to_cpu(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %7, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load volatile i32, i32* %43, align 4
  %45 = call i32 @le64_to_cpu(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load volatile i32, i32* %51, align 4
  %53 = call i32 @le64_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load volatile i32, i32* %59, align 4
  %61 = call i32 @le64_to_cpu(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = load i64*, i64** %7, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ipath_cdbg(i32 %33, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %41, i64 %46, i64 %49, i64 %54, i64 %57, i64 %62, i64 %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp ugt i32 %67, 4
  br i1 %68, label %69, label %104

69:                                               ; preds = %26
  %70 = load i32, i32* @PKT, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load volatile i32, i32* %72, align 4
  %74 = call i32 @le64_to_cpu(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = load i64*, i64** %7, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 4
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = load volatile i32, i32* %80, align 4
  %82 = call i32 @le64_to_cpu(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %7, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 5
  %86 = load i64, i64* %85, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load volatile i32, i32* %88, align 4
  %90 = call i32 @le64_to_cpu(i32 %89)
  %91 = sext i32 %90 to i64
  %92 = load i64*, i64** %7, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 6
  %94 = load i64, i64* %93, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 7
  %97 = load volatile i32, i32* %96, align 4
  %98 = call i32 @le64_to_cpu(i32 %97)
  %99 = sext i32 %98 to i64
  %100 = load i64*, i64** %7, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 7
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @ipath_cdbg(i32 %70, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %78, i64 %83, i64 %86, i64 %91, i64 %94, i64 %99, i64 %102)
  br label %104

104:                                              ; preds = %69, %26
  br label %105

105:                                              ; preds = %104, %21
  %106 = load i64, i64* %3, align 8
  %107 = call i32 @spin_lock_irqsave(i32* @ipath_pioavail_lock, i64 %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %207, %105
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %210

112:                                              ; preds = %108
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, 3
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %117 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @IPATH_SWAP_PIOBUFS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %115
  %123 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %124 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = xor i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load volatile i32, i32* %129, align 4
  %131 = call i32 @le64_to_cpu(i32 %130)
  store i32 %131, i32* %10, align 4
  br label %141

132:                                              ; preds = %115, %112
  %133 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %134 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load volatile i32, i32* %138, align 4
  %140 = call i32 @le64_to_cpu(i32 %139)
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %132, %122
  %142 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %143 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = xor i64 %156, %158
  %160 = xor i64 %159, -1
  %161 = and i64 %149, %160
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* @INFINIPATH_SENDPIOAVAIL_BUSY_SHIFT, align 4
  %165 = shl i32 %163, %164
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %206

168:                                              ; preds = %141
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %172 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = and i64 %170, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %206

180:                                              ; preds = %168
  %181 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %182 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %4, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = xor i32 %188, -1
  %190 = sext i32 %189 to i64
  %191 = and i64 %187, %190
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* %11, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %201 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  store i64 %199, i64* %205, align 8
  br label %206

206:                                              ; preds = %180, %168, %141
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %108

210:                                              ; preds = %108
  %211 = load i64, i64* %3, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* @ipath_pioavail_lock, i64 %211)
  br label %213

213:                                              ; preds = %210, %19
  ret void
}

declare dso_local i32 @ipath_dbg(i8*) #1

declare dso_local i32 @ipath_cdbg(i32, i8*, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
