; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_bus_reset_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_bus_reset_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32, i32*, i32, i32, %struct.TYPE_2__, i32, i32, i32*, i32*, i32, i32, i64, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@OHCI1394_NodeID = common dso_local global i32 0, align 4
@OHCI1394_NodeID_idValid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"node ID not valid, new bus reset in progress\0A\00", align 1
@OHCI1394_NodeID_nodeNumber = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"malconfigured bus\0A\00", align 1
@OHCI1394_NodeID_busNumber = common dso_local global i32 0, align 4
@OHCI1394_SelfIDCount = common dso_local global i32 0, align 4
@OHCI1394_SelfIDCount_selfIDError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"inconsistent self IDs\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"recursive bus reset detected, discarding self ids\0A\00", align 1
@OHCI1394_IntEventClear = common dso_local global i32 0, align 4
@OHCI1394_busReset = common dso_local global i32 0, align 4
@OHCI1394_BusOptions = common dso_local global i32 0, align 4
@OHCI1394_ConfigROMhdr = common dso_local global i32 0, align 4
@CONFIG_ROM_SIZE = common dso_local global i32 0, align 4
@OHCI1394_PhyReqFilterHiSet = common dso_local global i32 0, align 4
@OHCI1394_PhyReqFilterLoSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bus_reset_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bus_reset_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = inttoptr i64 %13 to %struct.fw_ohci*
  store %struct.fw_ohci* %14, %struct.fw_ohci** %3, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %16 = load i32, i32* @OHCI1394_NodeID, align 4
  %17 = call i32 @reg_read(%struct.fw_ohci* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @OHCI1394_NodeID_idValid, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = call i32 @fw_notify(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %245

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @OHCI1394_NodeID_nodeNumber, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 63
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @fw_notify(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %245

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @OHCI1394_NodeID_busNumber, align 4
  %34 = load i32, i32* @OHCI1394_NodeID_nodeNumber, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %38 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %40 = load i32, i32* @OHCI1394_SelfIDCount, align 4
  %41 = call i32 @reg_read(%struct.fw_ohci* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @OHCI1394_SelfIDCount_selfIDError, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = call i32 @fw_notify(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %245

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 3
  %51 = and i32 %50, 255
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 252
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %48
  %58 = call i32 @fw_notify(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %245

59:                                               ; preds = %54
  %60 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %61 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %60, i32 0, i32 14
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cond_le32_to_cpu(i32 %64)
  %66 = ashr i32 %65, 16
  %67 = and i32 %66, 255
  store i32 %67, i32* %8, align 4
  %68 = call i32 (...) @rmb()
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %108, %59
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %69
  %74 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %75 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %74, i32 0, i32 14
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %82 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %81, i32 0, i32 14
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, -1
  %90 = icmp ne i32 %80, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = call i32 @fw_notify(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %245

93:                                               ; preds = %73
  %94 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %95 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %94, i32 0, i32 14
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cond_le32_to_cpu(i32 %100)
  %102 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %103 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %69

113:                                              ; preds = %69
  %114 = call i32 (...) @rmb()
  %115 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %116 = load i32, i32* @OHCI1394_SelfIDCount, align 4
  %117 = call i32 @reg_read(%struct.fw_ohci* %115, i32 %116)
  %118 = ashr i32 %117, 16
  %119 = and i32 %118, 255
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = call i32 @fw_notify(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %245

125:                                              ; preds = %113
  %126 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %127 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %126, i32 0, i32 5
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @spin_lock_irqsave(i32* %127, i64 %128)
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %132 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %134 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %133, i32 0, i32 13
  %135 = call i32 @context_stop(i32* %134)
  %136 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %137 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %136, i32 0, i32 12
  %138 = call i32 @context_stop(i32* %137)
  %139 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %140 = load i32, i32* @OHCI1394_IntEventClear, align 4
  %141 = load i32, i32* @OHCI1394_busReset, align 4
  %142 = call i32 @reg_write(%struct.fw_ohci* %139, i32 %140, i32 %141)
  %143 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %144 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %125
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %150 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %147, %125
  %152 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %153 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %152, i32 0, i32 8
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %208

156:                                              ; preds = %151
  %157 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %158 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %161 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %160, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %159, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %166 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %165, i32 0, i32 7
  %167 = load i32*, i32** %166, align 8
  %168 = bitcast i32* %167 to i8*
  store i8* %168, i8** %11, align 8
  %169 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %170 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %164, %156
  %173 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %174 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %173, i32 0, i32 8
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %177 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %176, i32 0, i32 7
  store i32* %175, i32** %177, align 8
  %178 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %179 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %182 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %181, i32 0, i32 10
  store i32 %180, i32* %182, align 4
  %183 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %184 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %183, i32 0, i32 8
  store i32* null, i32** %184, align 8
  %185 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %186 = load i32, i32* @OHCI1394_BusOptions, align 4
  %187 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %188 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %187, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @be32_to_cpu(i32 %191)
  %193 = call i32 @reg_write(%struct.fw_ohci* %185, i32 %186, i32 %192)
  %194 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %195 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @cpu_to_be32(i32 %196)
  %198 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %199 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %198, i32 0, i32 7
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 %197, i32* %201, align 4
  %202 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %203 = load i32, i32* @OHCI1394_ConfigROMhdr, align 4
  %204 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %205 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @reg_write(%struct.fw_ohci* %202, i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %172, %151
  %209 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %210 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %209, i32 0, i32 5
  %211 = load i64, i64* %10, align 8
  %212 = call i32 @spin_unlock_irqrestore(i32* %210, i64 %211)
  %213 = load i8*, i8** %11, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %208
  %216 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %217 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %221 = load i8*, i8** %11, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @dma_free_coherent(i32 %219, i32 %220, i8* %221, i32 %222)
  br label %224

224:                                              ; preds = %215, %208
  %225 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %226 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %4, align 4
  %230 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %231 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @log_selfids(i32 %227, i32 %228, i32 %229, i32* %232)
  %234 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %235 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %234, i32 0, i32 4
  %236 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %237 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %4, align 4
  %241 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %242 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @fw_core_handle_bus_reset(%struct.TYPE_2__* %235, i32 %238, i32 %239, i32 %240, i32* %243)
  br label %245

245:                                              ; preds = %224, %123, %91, %57, %46, %29, %22
  ret void
}

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @fw_notify(i8*) #1

declare dso_local i32 @cond_le32_to_cpu(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @context_stop(i32*) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

declare dso_local i32 @log_selfids(i32, i32, i32, i32*) #1

declare dso_local i32 @fw_core_handle_bus_reset(%struct.TYPE_2__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
