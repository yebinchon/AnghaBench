; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_device_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.slgt_info = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SLGT_MAX_PORTS = common dso_local global i32 0, align 4
@SYNCLINK_GT2_DEVICE_ID = common dso_local global i64 0, align 8
@SYNCLINK_GT4_DEVICE_ID = common dso_local global i64 0, align 8
@slgt_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s request_irq failed IRQ=%d\0A\00", align 1
@serial_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_dev*)* @device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_init(i32 %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @SLGT_MAX_PORTS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca %struct.slgt_info*, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SYNCLINK_GT2_DEVICE_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 2, i32* %8, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SYNCLINK_GT4_DEVICE_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 4, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %19
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = call %struct.slgt_info* @alloc_dev(i32 %34, i32 %35, %struct.pci_dev* %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %39
  store %struct.slgt_info* %37, %struct.slgt_info** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %42
  %44 = load %struct.slgt_info*, %struct.slgt_info** %43, align 8
  %45 = icmp eq %struct.slgt_info* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %58, %46
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %54
  %56 = load %struct.slgt_info*, %struct.slgt_info** %55, align 8
  %57 = call i32 @kfree(%struct.slgt_info* %56)
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %7, align 4
  br label %49

61:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %240

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %29

66:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %98, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %73
  %75 = load %struct.slgt_info*, %struct.slgt_info** %74, align 8
  %76 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 8
  %78 = mul nuw i64 8, %11
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i32 %77, %struct.slgt_info** %13, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %82
  %84 = load %struct.slgt_info*, %struct.slgt_info** %83, align 8
  %85 = call i32 @add_device(%struct.slgt_info* %84)
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %88
  %90 = load %struct.slgt_info*, %struct.slgt_info** %89, align 8
  %91 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %93
  %95 = load %struct.slgt_info*, %struct.slgt_info** %94, align 8
  %96 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %95, i32 0, i32 10
  %97 = call i32 @spin_lock_init(i32* %96)
  br label %98

98:                                               ; preds = %71
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %67

101:                                              ; preds = %67
  %102 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %103 = load %struct.slgt_info*, %struct.slgt_info** %102, align 16
  %104 = call i32 @claim_resources(%struct.slgt_info* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %215, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %108 = load %struct.slgt_info*, %struct.slgt_info** %107, align 16
  %109 = call i32 @alloc_dma_bufs(%struct.slgt_info* %108)
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %147, %106
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %150

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %116 = load %struct.slgt_info*, %struct.slgt_info** %115, align 16
  %117 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %120
  %122 = load %struct.slgt_info*, %struct.slgt_info** %121, align 8
  %123 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %122, i32 0, i32 10
  store i32 %118, i32* %123, align 4
  %124 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %125 = load %struct.slgt_info*, %struct.slgt_info** %124, align 16
  %126 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %129
  %131 = load %struct.slgt_info*, %struct.slgt_info** %130, align 8
  %132 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %131, i32 0, i32 6
  store i32 %127, i32* %132, align 4
  %133 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %134 = load %struct.slgt_info*, %struct.slgt_info** %133, align 16
  %135 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %138
  %140 = load %struct.slgt_info*, %struct.slgt_info** %139, align 8
  %141 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %140, i32 0, i32 9
  store i32 %136, i32* %141, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %143
  %145 = load %struct.slgt_info*, %struct.slgt_info** %144, align 8
  %146 = call i32 @alloc_dma_bufs(%struct.slgt_info* %145)
  br label %147

147:                                              ; preds = %114
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %110

150:                                              ; preds = %110
  %151 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %152 = load %struct.slgt_info*, %struct.slgt_info** %151, align 16
  %153 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @slgt_interrupt, align 4
  %156 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %157 = load %struct.slgt_info*, %struct.slgt_info** %156, align 16
  %158 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %161 = load %struct.slgt_info*, %struct.slgt_info** %160, align 16
  %162 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %165 = load %struct.slgt_info*, %struct.slgt_info** %164, align 16
  %166 = call i64 @request_irq(i32 %154, i32 %155, i32 %159, i32 %163, %struct.slgt_info* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %150
  %169 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %170 = load %struct.slgt_info*, %struct.slgt_info** %169, align 16
  %171 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %174 = load %struct.slgt_info*, %struct.slgt_info** %173, align 16
  %175 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @DBGERR(i8* %178)
  br label %214

180:                                              ; preds = %150
  %181 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %182 = load %struct.slgt_info*, %struct.slgt_info** %181, align 16
  %183 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  %184 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %185 = load %struct.slgt_info*, %struct.slgt_info** %184, align 16
  %186 = call i32 @adapter_test(%struct.slgt_info* %185)
  store i32 1, i32* %7, align 4
  br label %187

187:                                              ; preds = %210, %180
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %193 = load %struct.slgt_info*, %struct.slgt_info** %192, align 16
  %194 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %197
  %199 = load %struct.slgt_info*, %struct.slgt_info** %198, align 8
  %200 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %199, i32 0, i32 5
  store i32 %195, i32* %200, align 8
  %201 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 0
  %202 = load %struct.slgt_info*, %struct.slgt_info** %201, align 16
  %203 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %206
  %208 = load %struct.slgt_info*, %struct.slgt_info** %207, align 8
  %209 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %208, i32 0, i32 4
  store i32 %204, i32* %209, align 4
  br label %210

210:                                              ; preds = %191
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %187

213:                                              ; preds = %187
  br label %214

214:                                              ; preds = %213, %168
  br label %215

215:                                              ; preds = %214, %101
  store i32 0, i32* %7, align 4
  br label %216

216:                                              ; preds = %236, %215
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %8, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %216
  %221 = load i32, i32* @serial_driver, align 4
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %223
  %225 = load %struct.slgt_info*, %struct.slgt_info** %224, align 8
  %226 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.slgt_info*, %struct.slgt_info** %13, i64 %229
  %231 = load %struct.slgt_info*, %struct.slgt_info** %230, align 8
  %232 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %231, i32 0, i32 2
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = call i32 @tty_register_device(i32 %221, i32 %227, i32* %234)
  br label %236

236:                                              ; preds = %220
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %216

239:                                              ; preds = %216
  store i32 0, i32* %9, align 4
  br label %240

240:                                              ; preds = %239, %61
  %241 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %9, align 4
  switch i32 %242, label %244 [
    i32 0, label %243
    i32 1, label %243
  ]

243:                                              ; preds = %240, %240
  ret void

244:                                              ; preds = %240
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slgt_info* @alloc_dev(i32, i32, %struct.pci_dev*) #2

declare dso_local i32 @kfree(%struct.slgt_info*) #2

declare dso_local i32 @memcpy(i32, %struct.slgt_info**, i32) #2

declare dso_local i32 @add_device(%struct.slgt_info*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @claim_resources(%struct.slgt_info*) #2

declare dso_local i32 @alloc_dma_bufs(%struct.slgt_info*) #2

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.slgt_info*) #2

declare dso_local i32 @DBGERR(i8*) #2

declare dso_local i32 @adapter_test(%struct.slgt_info*) #2

declare dso_local i32 @tty_register_device(i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
