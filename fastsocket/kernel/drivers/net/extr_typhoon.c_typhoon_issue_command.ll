; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_issue_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_issue_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typhoon = type { i32, i32, i64, i32, %struct.basic_ring, %struct.typhoon_indexes* }
%struct.basic_ring = type { i64, i64 }
%struct.typhoon_indexes = type { i64, i64 }
%struct.cmd_desc = type { i32 }
%struct.resp_desc = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"%s: no descs for cmd, had (needed) %d (%d) cmd, %d (%d) resp\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TYPHOON_CMD_RESPOND = common dso_local global i32 0, align 4
@COMMAND_RING_SIZE = common dso_local global i64 0, align 8
@TYPHOON_REG_CMD_READY = common dso_local global i64 0, align 8
@TYPHOON_WAIT_TIMEOUT = common dso_local global i32 0, align 4
@TYPHOON_UDELAY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@TYPHOON_RESP_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TYPHOON_REG_SELF_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*, i32, %struct.cmd_desc*, i32, %struct.resp_desc*)* @typhoon_issue_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_issue_command(%struct.typhoon* %0, i32 %1, %struct.cmd_desc* %2, i32 %3, %struct.resp_desc* %4) #0 {
  %6 = alloca %struct.typhoon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resp_desc*, align 8
  %11 = alloca %struct.typhoon_indexes*, align 8
  %12 = alloca %struct.basic_ring*, align 8
  %13 = alloca %struct.resp_desc, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.cmd_desc*, align 8
  store %struct.typhoon* %0, %struct.typhoon** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.cmd_desc* %2, %struct.cmd_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.resp_desc* %4, %struct.resp_desc** %10, align 8
  %22 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %23 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %22, i32 0, i32 5
  %24 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %23, align 8
  store %struct.typhoon_indexes* %24, %struct.typhoon_indexes** %11, align 8
  %25 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %26 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %25, i32 0, i32 4
  store %struct.basic_ring* %26, %struct.basic_ring** %12, align 8
  store i32 0, i32* %15, align 4
  %27 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %28 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %27, i32 0, i32 1
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %31 = call i32 @typhoon_num_free_cmd(%struct.typhoon* %30)
  store i32 %31, i32* %17, align 4
  %32 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %33 = call i32 @typhoon_num_free_resp(%struct.typhoon* %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %5
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37, %5
  %42 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %43 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  br label %199

52:                                               ; preds = %37
  %53 = load %struct.cmd_desc*, %struct.cmd_desc** %8, align 8
  %54 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TYPHOON_CMD_RESPOND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %61 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.resp_desc*, %struct.resp_desc** %10, align 8
  %63 = icmp eq %struct.resp_desc* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store %struct.resp_desc* %13, %struct.resp_desc** %10, align 8
  store i32 1, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %59
  br label %66

66:                                               ; preds = %65, %52
  store i32 0, i32* %20, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %19, align 4
  %71 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %72 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = load i64, i64* @COMMAND_RING_SIZE, align 8
  %78 = icmp sgt i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %66
  %83 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %84 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %19, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load i64, i64* @COMMAND_RING_SIZE, align 8
  %90 = sub nsw i64 %88, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %20, align 4
  %92 = load i64, i64* @COMMAND_RING_SIZE, align 8
  %93 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %94 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  br label %98

98:                                               ; preds = %82, %66
  %99 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %100 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %103 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = load %struct.cmd_desc*, %struct.cmd_desc** %8, align 8
  %107 = load i32, i32* %19, align 4
  %108 = call i32 @memcpy(i64 %105, %struct.cmd_desc* %106, i32 %107)
  %109 = load i32, i32* %20, align 4
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %98
  %113 = load %struct.cmd_desc*, %struct.cmd_desc** %8, align 8
  store %struct.cmd_desc* %113, %struct.cmd_desc** %21, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = udiv i64 %115, 4
  %117 = load %struct.cmd_desc*, %struct.cmd_desc** %21, align 8
  %118 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %117, i64 %116
  store %struct.cmd_desc* %118, %struct.cmd_desc** %21, align 8
  %119 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %120 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.cmd_desc*, %struct.cmd_desc** %21, align 8
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @memcpy(i64 %121, %struct.cmd_desc* %122, i32 %123)
  br label %125

125:                                              ; preds = %112, %98
  %126 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %127 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %126, i32 0, i32 0
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @typhoon_inc_cmd_index(i64* %127, i32 %128)
  %130 = call i32 (...) @wmb()
  %131 = load %struct.basic_ring*, %struct.basic_ring** %12, align 8
  %132 = getelementptr inbounds %struct.basic_ring, %struct.basic_ring* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %136 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @TYPHOON_REG_CMD_READY, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @iowrite32(i32 %134, i64 %139)
  %141 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %142 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @typhoon_post_pci_writes(i64 %143)
  %145 = load %struct.cmd_desc*, %struct.cmd_desc** %8, align 8
  %146 = getelementptr inbounds %struct.cmd_desc, %struct.cmd_desc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TYPHOON_CMD_RESPOND, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %125
  br label %199

152:                                              ; preds = %125
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %179, %152
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @TYPHOON_WAIT_TIMEOUT, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i32, i32* %16, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i1 [ false, %153 ], [ %160, %157 ]
  br i1 %162, label %163, label %182

163:                                              ; preds = %161
  %164 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %11, align 8
  %165 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %11, align 8
  %168 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.resp_desc*, %struct.resp_desc** %10, align 8
  %175 = call i32 @typhoon_process_response(%struct.typhoon* %172, i32 %173, %struct.resp_desc* %174)
  store i32 %175, i32* %16, align 4
  br label %176

176:                                              ; preds = %171, %163
  %177 = load i32, i32* @TYPHOON_UDELAY, align 4
  %178 = call i32 @udelay(i32 %177)
  br label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %153

182:                                              ; preds = %161
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @ETIMEDOUT, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %15, align 4
  br label %199

188:                                              ; preds = %182
  %189 = load %struct.resp_desc*, %struct.resp_desc** %10, align 8
  %190 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @TYPHOON_RESP_ERROR, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %15, align 4
  br label %198

198:                                              ; preds = %195, %188
  br label %199

199:                                              ; preds = %198, %185, %151, %41
  %200 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %201 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %199
  %205 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %206 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  %207 = call i32 (...) @smp_wmb()
  %208 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %11, align 8
  %209 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.typhoon_indexes*, %struct.typhoon_indexes** %11, align 8
  %212 = getelementptr inbounds %struct.typhoon_indexes, %struct.typhoon_indexes* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %210, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %204
  %216 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %217 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @TYPHOON_REG_SELF_INTERRUPT, align 8
  %220 = add nsw i64 %218, %219
  %221 = call i32 @iowrite32(i32 1, i64 %220)
  br label %222

222:                                              ; preds = %215, %204
  br label %223

223:                                              ; preds = %222, %199
  %224 = load %struct.typhoon*, %struct.typhoon** %6, align 8
  %225 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %224, i32 0, i32 1
  %226 = call i32 @spin_unlock(i32* %225)
  %227 = load i32, i32* %15, align 4
  ret i32 %227
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @typhoon_num_free_cmd(%struct.typhoon*) #1

declare dso_local i32 @typhoon_num_free_resp(%struct.typhoon*) #1

declare dso_local i32 @printk(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i64, %struct.cmd_desc*, i32) #1

declare dso_local i32 @typhoon_inc_cmd_index(i64*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @typhoon_post_pci_writes(i64) #1

declare dso_local i32 @typhoon_process_response(%struct.typhoon*, i32, %struct.resp_desc*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
