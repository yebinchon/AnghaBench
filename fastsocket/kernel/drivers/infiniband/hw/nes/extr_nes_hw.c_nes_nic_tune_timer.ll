; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_nic_tune_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_hw.c_nes_nic_tune_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, %struct.nes_hw_tune_timer }
%struct.nes_hw_tune_timer = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@NES_NIC_CQ_DOWNWARD_TREND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*)* @nes_nic_tune_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_nic_tune_timer(%struct.nes_device* %0) #0 {
  %2 = alloca %struct.nes_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nes_adapter*, align 8
  %5 = alloca %struct.nes_hw_tune_timer*, align 8
  %6 = alloca i32, align 4
  store %struct.nes_device* %0, %struct.nes_device** %2, align 8
  %7 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %8 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %7, i32 0, i32 2
  %9 = load %struct.nes_adapter*, %struct.nes_adapter** %8, align 8
  store %struct.nes_adapter* %9, %struct.nes_adapter** %4, align 8
  %10 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %10, i32 0, i32 1
  store %struct.nes_hw_tune_timer* %11, %struct.nes_hw_tune_timer** %5, align 8
  %12 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %13 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %20 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %26 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %29 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %35 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %37 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NES_NIC_CQ_DOWNWARD_TREND, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %44 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %49 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %54 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sdiv i32 %55, 2
  %57 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %58 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %60 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %62 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %63, i32 0, i32 0
  %65 = load i64, i64* %3, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %210

67:                                               ; preds = %47, %41
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %174

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %74 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %79 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp sle i32 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %84 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %88 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %87, i32 0, i32 4
  store i32 0, i32* %88, align 8
  br label %145

89:                                               ; preds = %71
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %92 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp sle i32 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %97 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %96, i32 0, i32 3
  store i32 0, i32* %97, align 4
  %98 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %99 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %98, i32 0, i32 4
  store i32 0, i32* %99, align 8
  br label %144

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %103 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = icmp sle i32 %101, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %108 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %112 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %111, i32 0, i32 3
  store i32 0, i32* %112, align 4
  br label %143

113:                                              ; preds = %100
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %116 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, 2
  %119 = icmp sle i32 %114, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %113
  %121 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %122 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 2
  store i32 %124, i32* %122, align 4
  %125 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %126 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %125, i32 0, i32 3
  store i32 0, i32* %126, align 4
  %127 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %128 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %142

131:                                              ; preds = %113
  %132 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %133 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %134, 4
  store i32 %135, i32* %133, align 4
  %136 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %137 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %136, i32 0, i32 3
  store i32 0, i32* %137, align 4
  %138 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %139 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %131, %120
  br label %143

143:                                              ; preds = %142, %106
  br label %144

144:                                              ; preds = %143, %95
  br label %145

145:                                              ; preds = %144, %82
  %146 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %147 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp sgt i32 %148, 3
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %152 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 3
  store i32 %154, i32* %152, align 4
  %155 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %156 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %155, i32 0, i32 3
  store i32 0, i32* %156, align 4
  %157 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %158 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %157, i32 0, i32 4
  store i32 0, i32* %158, align 8
  br label %159

159:                                              ; preds = %150, %145
  %160 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %161 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = icmp sgt i32 %162, 5
  br i1 %163, label %164, label %173

164:                                              ; preds = %159
  %165 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %166 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 4
  store i32 %168, i32* %166, align 4
  %169 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %170 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %169, i32 0, i32 4
  store i32 0, i32* %170, align 8
  %171 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %172 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %171, i32 0, i32 3
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %164, %159
  br label %174

174:                                              ; preds = %173, %68
  %175 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %176 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %179 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %177, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %174
  %183 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %184 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %187 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  br label %203

188:                                              ; preds = %174
  %189 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %190 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %193 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %198 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.nes_hw_tune_timer*, %struct.nes_hw_tune_timer** %5, align 8
  %201 = getelementptr inbounds %struct.nes_hw_tune_timer, %struct.nes_hw_tune_timer* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %196, %188
  br label %203

203:                                              ; preds = %202, %182
  %204 = load %struct.nes_device*, %struct.nes_device** %2, align 8
  %205 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  %206 = load %struct.nes_adapter*, %struct.nes_adapter** %4, align 8
  %207 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %206, i32 0, i32 0
  %208 = load i64, i64* %3, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* %207, i64 %208)
  br label %210

210:                                              ; preds = %203, %52
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
