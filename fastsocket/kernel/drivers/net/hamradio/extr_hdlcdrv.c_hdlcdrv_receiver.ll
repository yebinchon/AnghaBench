; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_receiver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_hdlcdrv.c_hdlcdrv_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hdlcdrv_state = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@HDLCDRV_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdlcdrv_receiver(%struct.net_device* %0, %struct.hdlcdrv_state* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hdlcdrv_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.hdlcdrv_state* %1, %struct.hdlcdrv_state** %4, align 8
  %13 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %14 = icmp ne %struct.hdlcdrv_state* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %17 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HDLCDRV_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %213

22:                                               ; preds = %15
  %23 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %24 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = call i64 @test_and_set_bit(i32 0, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %213

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %192, %29
  %31 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %32 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 8
  %34 = call i32 @hdlcdrv_hbuf_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %208

37:                                               ; preds = %30
  %38 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %39 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 8
  %41 = call i32 @hdlcdrv_hbuf_get(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %43 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %12, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %50 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %55 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 16
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 16
  %61 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %62 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %67 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 16
  store i32 %70, i32* %68, align 8
  store i32 15, i32* %5, align 4
  store i32 130048, i32* %6, align 4
  store i32 130560, i32* %7, align 4
  store i32 64512, i32* %8, align 4
  store i32 129024, i32* %9, align 4
  store i32 63488, i32* %10, align 4
  store i32 65535, i32* %11, align 4
  br label %71

71:                                               ; preds = %176, %37
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %192

74:                                               ; preds = %71
  %75 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %76 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %85 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  br label %175

87:                                               ; preds = %74
  %88 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %89 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %140

96:                                               ; preds = %87
  %97 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %98 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %96
  %103 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %104 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %105 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 8, %108
  %110 = shl i32 %107, %109
  %111 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %112 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 8
  %116 = load i32, i32* %5, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @hdlc_rx_add_bytes(%struct.hdlcdrv_state* %103, i32 %110, i32 %117)
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %121 = call i32 @hdlc_rx_flag(%struct.net_device* %119, %struct.hdlcdrv_state* %120)
  br label %122

122:                                              ; preds = %102, %96
  %123 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %124 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %127 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %131 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 6
  store i32 %129, i32* %132, align 8
  %133 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %134 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %138 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  store i32 %136, i32* %139, align 8
  br label %174

140:                                              ; preds = %87
  %141 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %142 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* %10, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %140
  %150 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %151 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %152, align 8
  %155 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %156 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = xor i32 %159, -1
  %161 = and i32 %158, %160
  %162 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %163 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %165, %166
  %168 = shl i32 %167, 1
  %169 = or i32 %161, %168
  %170 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %171 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 %169, i32* %172, align 4
  br label %173

173:                                              ; preds = %149, %140
  br label %174

174:                                              ; preds = %173, %122
  br label %175

175:                                              ; preds = %174, %83
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %6, align 4
  %180 = shl i32 %179, 1
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = shl i32 %181, 1
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %8, align 4
  %184 = shl i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %9, align 4
  %186 = shl i32 %185, 1
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = shl i32 %187, 1
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %11, align 4
  %190 = shl i32 %189, 1
  %191 = or i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %71

192:                                              ; preds = %71
  %193 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %194 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %195 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %199 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @hdlc_rx_add_bytes(%struct.hdlcdrv_state* %193, i32 %197, i32 %201)
  %203 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %204 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, %202
  store i32 %207, i32* %205, align 8
  br label %30

208:                                              ; preds = %30
  %209 = load %struct.hdlcdrv_state*, %struct.hdlcdrv_state** %4, align 8
  %210 = getelementptr inbounds %struct.hdlcdrv_state, %struct.hdlcdrv_state* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 4
  %212 = call i32 @clear_bit(i32 0, i32* %211)
  br label %213

213:                                              ; preds = %208, %28, %21
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hdlcdrv_hbuf_empty(i32*) #1

declare dso_local i32 @hdlcdrv_hbuf_get(i32*) #1

declare dso_local i32 @hdlc_rx_add_bytes(%struct.hdlcdrv_state*, i32, i32) #1

declare dso_local i32 @hdlc_rx_flag(%struct.net_device*, %struct.hdlcdrv_state*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
