; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_elo.c_elo_process_data_10.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/touchscreen/extr_elo.c_elo_process_data_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elo = type { i8*, i64, i32, i8, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ELO10_LEAD_BYTE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"elo: unsynchronized data: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"elo: bad checksum: 0x%02x, expected 0x%02x\0A\00", align 1
@ELO10_TOUCH_PACKET = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"elo: unexpected packet: 0x%02x\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ELO10_PRESSURE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ELO10_TOUCH = common dso_local global i32 0, align 4
@ELO10_ACK_PACKET = common dso_local global i32 0, align 4
@ELO10_PACKET_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elo*, i8)* @elo_process_data_10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elo_process_data_10(%struct.elo* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.elo*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.input_dev*, align 8
  store %struct.elo* %0, %struct.elo** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.elo*, %struct.elo** %3, align 8
  %7 = getelementptr inbounds %struct.elo, %struct.elo* %6, i32 0, i32 6
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load i8, i8* %4, align 1
  %10 = load %struct.elo*, %struct.elo** %3, align 8
  %11 = getelementptr inbounds %struct.elo, %struct.elo* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.elo*, %struct.elo** %3, align 8
  %14 = getelementptr inbounds %struct.elo, %struct.elo* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  store i8 %9, i8* %16, align 1
  %17 = load %struct.elo*, %struct.elo** %3, align 8
  %18 = getelementptr inbounds %struct.elo, %struct.elo* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %18, align 8
  switch i64 %19, label %211 [
    i64 0, label %21
    i64 9, label %35
  ]

21:                                               ; preds = %2
  %22 = load %struct.elo*, %struct.elo** %3, align 8
  %23 = getelementptr inbounds %struct.elo, %struct.elo* %22, i32 0, i32 2
  store i32 170, i32* %23, align 8
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @ELO10_LEAD_BYTE, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8, i8* %4, align 1
  %31 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 zeroext %30)
  %32 = load %struct.elo*, %struct.elo** %3, align 8
  %33 = getelementptr inbounds %struct.elo, %struct.elo* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  br label %211

35:                                               ; preds = %2
  %36 = load %struct.elo*, %struct.elo** %3, align 8
  %37 = getelementptr inbounds %struct.elo, %struct.elo* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = load %struct.elo*, %struct.elo** %3, align 8
  %41 = getelementptr inbounds %struct.elo, %struct.elo* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i8, i8* %4, align 1
  %46 = load %struct.elo*, %struct.elo** %3, align 8
  %47 = getelementptr inbounds %struct.elo, %struct.elo* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %45, i32 %48)
  br label %211

50:                                               ; preds = %35
  %51 = load %struct.elo*, %struct.elo** %3, align 8
  %52 = getelementptr inbounds %struct.elo, %struct.elo* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load %struct.elo*, %struct.elo** %3, align 8
  %58 = getelementptr inbounds %struct.elo, %struct.elo* %57, i32 0, i32 3
  %59 = load i8, i8* %58, align 4
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %56, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %50
  %63 = load %struct.elo*, %struct.elo** %3, align 8
  %64 = getelementptr inbounds %struct.elo, %struct.elo* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @ELO10_TOUCH_PACKET, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.elo*, %struct.elo** %3, align 8
  %74 = getelementptr inbounds %struct.elo, %struct.elo* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = call i32 (i8*, i8, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %77)
  br label %79

79:                                               ; preds = %72, %62
  br label %211

80:                                               ; preds = %50
  %81 = load %struct.elo*, %struct.elo** %3, align 8
  %82 = getelementptr inbounds %struct.elo, %struct.elo* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8, i8* @ELO10_TOUCH_PACKET, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @likely(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %169

93:                                               ; preds = %80
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = load i32, i32* @ABS_X, align 4
  %96 = load %struct.elo*, %struct.elo** %3, align 8
  %97 = getelementptr inbounds %struct.elo, %struct.elo* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = shl i32 %101, 8
  %103 = load %struct.elo*, %struct.elo** %3, align 8
  %104 = getelementptr inbounds %struct.elo, %struct.elo* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 3
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = or i32 %102, %108
  %110 = call i32 @input_report_abs(%struct.input_dev* %94, i32 %95, i32 %109)
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = load i32, i32* @ABS_Y, align 4
  %113 = load %struct.elo*, %struct.elo** %3, align 8
  %114 = getelementptr inbounds %struct.elo, %struct.elo* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 6
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl i32 %118, 8
  %120 = load %struct.elo*, %struct.elo** %3, align 8
  %121 = getelementptr inbounds %struct.elo, %struct.elo* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 5
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %119, %125
  %127 = call i32 @input_report_abs(%struct.input_dev* %111, i32 %112, i32 %126)
  %128 = load %struct.elo*, %struct.elo** %3, align 8
  %129 = getelementptr inbounds %struct.elo, %struct.elo* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* @ELO10_PRESSURE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %93
  %138 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %139 = load i32, i32* @ABS_PRESSURE, align 4
  %140 = load %struct.elo*, %struct.elo** %3, align 8
  %141 = getelementptr inbounds %struct.elo, %struct.elo* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, 8
  %147 = load %struct.elo*, %struct.elo** %3, align 8
  %148 = getelementptr inbounds %struct.elo, %struct.elo* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 7
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %146, %152
  %154 = call i32 @input_report_abs(%struct.input_dev* %138, i32 %139, i32 %153)
  br label %155

155:                                              ; preds = %137, %93
  %156 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %157 = load i32, i32* @BTN_TOUCH, align 4
  %158 = load %struct.elo*, %struct.elo** %3, align 8
  %159 = getelementptr inbounds %struct.elo, %struct.elo* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 2
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i32, i32* @ELO10_TOUCH, align 4
  %165 = and i32 %163, %164
  %166 = call i32 @input_report_key(%struct.input_dev* %156, i32 %157, i32 %165)
  %167 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %168 = call i32 @input_sync(%struct.input_dev* %167)
  br label %210

169:                                              ; preds = %80
  %170 = load %struct.elo*, %struct.elo** %3, align 8
  %171 = getelementptr inbounds %struct.elo, %struct.elo* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = load i32, i32* @ELO10_ACK_PACKET, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %194

178:                                              ; preds = %169
  %179 = load %struct.elo*, %struct.elo** %3, align 8
  %180 = getelementptr inbounds %struct.elo, %struct.elo* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 48
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i8, i8* @ELO10_TOUCH_PACKET, align 1
  %188 = load %struct.elo*, %struct.elo** %3, align 8
  %189 = getelementptr inbounds %struct.elo, %struct.elo* %188, i32 0, i32 3
  store i8 %187, i8* %189, align 4
  br label %190

190:                                              ; preds = %186, %178
  %191 = load %struct.elo*, %struct.elo** %3, align 8
  %192 = getelementptr inbounds %struct.elo, %struct.elo* %191, i32 0, i32 5
  %193 = call i32 @complete(i32* %192)
  br label %209

194:                                              ; preds = %169
  %195 = load %struct.elo*, %struct.elo** %3, align 8
  %196 = getelementptr inbounds %struct.elo, %struct.elo* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.elo*, %struct.elo** %3, align 8
  %199 = getelementptr inbounds %struct.elo, %struct.elo* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = bitcast i8* %201 to i32*
  %203 = load i32, i32* @ELO10_PACKET_LEN, align 4
  %204 = call i32 @memcpy(i32 %197, i32* %202, i32 %203)
  %205 = load i32, i32* @ELO10_ACK_PACKET, align 4
  %206 = trunc i32 %205 to i8
  %207 = load %struct.elo*, %struct.elo** %3, align 8
  %208 = getelementptr inbounds %struct.elo, %struct.elo* %207, i32 0, i32 3
  store i8 %206, i8* %208, align 4
  br label %209

209:                                              ; preds = %194, %190
  br label %210

210:                                              ; preds = %209, %155
  br label %211

211:                                              ; preds = %2, %210, %79, %44, %34
  %212 = load i8, i8* %4, align 1
  %213 = zext i8 %212 to i32
  %214 = load %struct.elo*, %struct.elo** %3, align 8
  %215 = getelementptr inbounds %struct.elo, %struct.elo* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, %213
  store i32 %217, i32* %215, align 8
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8 zeroext, ...) #1

declare dso_local i32 @likely(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
