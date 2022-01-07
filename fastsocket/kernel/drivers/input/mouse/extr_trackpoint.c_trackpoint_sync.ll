; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_trackpoint.c_trackpoint_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32, %struct.trackpoint_data* }
%struct.trackpoint_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TP_TOGGLE_TWOHAND = common dso_local global i32 0, align 4
@TP_MASK_TWOHAND = common dso_local global i8 0, align 1
@TP_TOGGLE_SOURCE_TAG = common dso_local global i32 0, align 4
@TP_MASK_SOURCE_TAG = common dso_local global i8 0, align 1
@TP_TOGGLE_MB = common dso_local global i32 0, align 4
@TP_MASK_MB = common dso_local global i8 0, align 1
@TP_SENS = common dso_local global i32 0, align 4
@TP_INERTIA = common dso_local global i32 0, align 4
@TP_SPEED = common dso_local global i32 0, align 4
@TP_REACH = common dso_local global i32 0, align 4
@TP_DRAGHYS = common dso_local global i32 0, align 4
@TP_MINDRAG = common dso_local global i32 0, align 4
@TP_THRESH = common dso_local global i32 0, align 4
@TP_UP_THRESH = common dso_local global i32 0, align 4
@TP_Z_TIME = common dso_local global i32 0, align 4
@TP_JENKS_CURV = common dso_local global i32 0, align 4
@TP_TOGGLE_PTSON = common dso_local global i32 0, align 4
@TP_MASK_PTSON = common dso_local global i8 0, align 1
@TP_TOGGLE_SKIPBACK = common dso_local global i32 0, align 4
@TP_MASK_SKIPBACK = common dso_local global i8 0, align 1
@TP_TOGGLE_EXT_DEV = common dso_local global i32 0, align 4
@TP_MASK_EXT_DEV = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @trackpoint_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_sync(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.trackpoint_data*, align 8
  %4 = alloca i8, align 1
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %5 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %6 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 1
  %7 = load %struct.trackpoint_data*, %struct.trackpoint_data** %6, align 8
  store %struct.trackpoint_data* %7, %struct.trackpoint_data** %3, align 8
  %8 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %9 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 0
  %10 = load i32, i32* @TP_TOGGLE_TWOHAND, align 4
  %11 = call i32 @trackpoint_read(i32* %9, i32 %10, i8* %4)
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @TP_MASK_TWOHAND, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 0
  %21 = load i32, i32* @TP_TOGGLE_TWOHAND, align 4
  %22 = load i8, i8* @TP_MASK_TWOHAND, align 1
  %23 = call i32 @trackpoint_toggle_bit(i32* %20, i32 %21, i8 zeroext %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %26 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %25, i32 0, i32 0
  %27 = load i32, i32* @TP_TOGGLE_SOURCE_TAG, align 4
  %28 = call i32 @trackpoint_read(i32* %26, i32 %27, i8* %4)
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @TP_MASK_SOURCE_TAG, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %37 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %36, i32 0, i32 0
  %38 = load i32, i32* @TP_TOGGLE_SOURCE_TAG, align 4
  %39 = load i8, i8* @TP_MASK_SOURCE_TAG, align 1
  %40 = call i32 @trackpoint_toggle_bit(i32* %37, i32 %38, i8 zeroext %39)
  br label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %43 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %42, i32 0, i32 0
  %44 = load i32, i32* @TP_TOGGLE_MB, align 4
  %45 = call i32 @trackpoint_read(i32* %43, i32 %44, i8* %4)
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @TP_MASK_MB, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %53, i32 0, i32 0
  %55 = load i32, i32* @TP_TOGGLE_MB, align 4
  %56 = load i8, i8* @TP_MASK_MB, align 1
  %57 = call i32 @trackpoint_toggle_bit(i32* %54, i32 %55, i8 zeroext %56)
  br label %58

58:                                               ; preds = %52, %41
  %59 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %60 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %59, i32 0, i32 0
  %61 = load i32, i32* @TP_SENS, align 4
  %62 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %63 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @trackpoint_write(i32* %60, i32 %61, i32 %64)
  %66 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %67 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %66, i32 0, i32 0
  %68 = load i32, i32* @TP_INERTIA, align 4
  %69 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %70 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %69, i32 0, i32 11
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @trackpoint_write(i32* %67, i32 %68, i32 %71)
  %73 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %74 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %73, i32 0, i32 0
  %75 = load i32, i32* @TP_SPEED, align 4
  %76 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %77 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @trackpoint_write(i32* %74, i32 %75, i32 %78)
  %80 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %81 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %80, i32 0, i32 0
  %82 = load i32, i32* @TP_REACH, align 4
  %83 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %84 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @trackpoint_write(i32* %81, i32 %82, i32 %85)
  %87 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %88 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %87, i32 0, i32 0
  %89 = load i32, i32* @TP_DRAGHYS, align 4
  %90 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %91 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @trackpoint_write(i32* %88, i32 %89, i32 %92)
  %94 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %95 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %94, i32 0, i32 0
  %96 = load i32, i32* @TP_MINDRAG, align 4
  %97 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %98 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @trackpoint_write(i32* %95, i32 %96, i32 %99)
  %101 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %102 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %101, i32 0, i32 0
  %103 = load i32, i32* @TP_THRESH, align 4
  %104 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %105 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @trackpoint_write(i32* %102, i32 %103, i32 %106)
  %108 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %109 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %108, i32 0, i32 0
  %110 = load i32, i32* @TP_UP_THRESH, align 4
  %111 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %112 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @trackpoint_write(i32* %109, i32 %110, i32 %113)
  %115 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %116 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %115, i32 0, i32 0
  %117 = load i32, i32* @TP_Z_TIME, align 4
  %118 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %119 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @trackpoint_write(i32* %116, i32 %117, i32 %120)
  %122 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %123 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %122, i32 0, i32 0
  %124 = load i32, i32* @TP_JENKS_CURV, align 4
  %125 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %126 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @trackpoint_write(i32* %123, i32 %124, i32 %127)
  %129 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %130 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %129, i32 0, i32 0
  %131 = load i32, i32* @TP_TOGGLE_PTSON, align 4
  %132 = call i32 @trackpoint_read(i32* %130, i32 %131, i8* %4)
  %133 = load i8, i8* %4, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8, i8* @TP_MASK_PTSON, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %134, %136
  %138 = load i8, i8* @TP_MASK_PTSON, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %137, %139
  %141 = zext i1 %140 to i32
  %142 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %143 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %58
  %147 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %148 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %147, i32 0, i32 0
  %149 = load i32, i32* @TP_TOGGLE_PTSON, align 4
  %150 = load i8, i8* @TP_MASK_PTSON, align 1
  %151 = call i32 @trackpoint_toggle_bit(i32* %148, i32 %149, i8 zeroext %150)
  br label %152

152:                                              ; preds = %146, %58
  %153 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %154 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %153, i32 0, i32 0
  %155 = load i32, i32* @TP_TOGGLE_SKIPBACK, align 4
  %156 = call i32 @trackpoint_read(i32* %154, i32 %155, i8* %4)
  %157 = load i8, i8* %4, align 1
  %158 = zext i8 %157 to i32
  %159 = load i8, i8* @TP_MASK_SKIPBACK, align 1
  %160 = zext i8 %159 to i32
  %161 = and i32 %158, %160
  %162 = load i8, i8* @TP_MASK_SKIPBACK, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %161, %163
  %165 = zext i1 %164 to i32
  %166 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %167 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %152
  %171 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %172 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %171, i32 0, i32 0
  %173 = load i32, i32* @TP_TOGGLE_SKIPBACK, align 4
  %174 = load i8, i8* @TP_MASK_SKIPBACK, align 1
  %175 = call i32 @trackpoint_toggle_bit(i32* %172, i32 %173, i8 zeroext %174)
  br label %176

176:                                              ; preds = %170, %152
  %177 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %178 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %177, i32 0, i32 0
  %179 = load i32, i32* @TP_TOGGLE_EXT_DEV, align 4
  %180 = call i32 @trackpoint_read(i32* %178, i32 %179, i8* %4)
  %181 = load i8, i8* %4, align 1
  %182 = zext i8 %181 to i32
  %183 = load i8, i8* @TP_MASK_EXT_DEV, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %182, %184
  %186 = load i8, i8* @TP_MASK_EXT_DEV, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %185, %187
  %189 = zext i1 %188 to i32
  %190 = load %struct.trackpoint_data*, %struct.trackpoint_data** %3, align 8
  %191 = getelementptr inbounds %struct.trackpoint_data, %struct.trackpoint_data* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %200

194:                                              ; preds = %176
  %195 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %196 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %195, i32 0, i32 0
  %197 = load i32, i32* @TP_TOGGLE_EXT_DEV, align 4
  %198 = load i8, i8* @TP_MASK_EXT_DEV, align 1
  %199 = call i32 @trackpoint_toggle_bit(i32* %196, i32 %197, i8 zeroext %198)
  br label %200

200:                                              ; preds = %194, %176
  ret i32 0
}

declare dso_local i32 @trackpoint_read(i32*, i32, i8*) #1

declare dso_local i32 @trackpoint_toggle_bit(i32*, i32, i8 zeroext) #1

declare dso_local i32 @trackpoint_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
