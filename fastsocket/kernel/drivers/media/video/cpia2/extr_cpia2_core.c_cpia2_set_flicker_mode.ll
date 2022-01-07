; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_flicker_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_core.c_cpia2_set_flicker_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8, i32, i32 }
%struct.TYPE_6__ = type { i8 }
%struct.TYPE_5__ = type { i64 }

@DEVICE_STV_672 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_FLICKER_MODES = common dso_local global i32 0, align 4
@TRANSFER_READ = common dso_local global i32 0, align 4
@CPIA2_VP_FLICKER_MODES_NEVER_FLICKER = common dso_local global i8 0, align 1
@CPIA2_VP_FLICKER_MODES_50HZ = common dso_local global i8 0, align 1
@CPIA2_CMD_SET_FLICKER_MODES = common dso_local global i32 0, align 4
@TRANSFER_WRITE = common dso_local global i32 0, align 4
@CPIA2_CMD_GET_VP_EXP_MODES = common dso_local global i32 0, align 4
@CPIA2_VP_EXPOSURE_MODES_INHIBIT_FLICKER = common dso_local global i8 0, align 1
@CPIA2_CMD_SET_VP_EXP_MODES = common dso_local global i32 0, align 4
@CPIA2_CMD_REHASH_VP4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpia2_set_flicker_mode(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %9 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DEVICE_STV_672, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %171

18:                                               ; preds = %2
  %19 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %20 = load i32, i32* @CPIA2_CMD_GET_FLICKER_MODES, align 4
  %21 = load i32, i32* @TRANSFER_READ, align 4
  %22 = call i32 @cpia2_do_command(%struct.camera_data* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %171

26:                                               ; preds = %18
  %27 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %28 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 8
  store i8 %31, i8* %6, align 1
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %76 [
    i32 128, label %33
    i32 129, label %47
    i32 130, label %62
  ]

33:                                               ; preds = %26
  %34 = load i8, i8* @CPIA2_VP_FLICKER_MODES_NEVER_FLICKER, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %6, align 1
  %40 = load i8, i8* @CPIA2_VP_FLICKER_MODES_50HZ, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load i8, i8* %6, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %6, align 1
  br label %79

47:                                               ; preds = %26
  %48 = load i8, i8* @CPIA2_VP_FLICKER_MODES_NEVER_FLICKER, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, -1
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %6, align 1
  %55 = load i8, i8* @CPIA2_VP_FLICKER_MODES_50HZ, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %56, -1
  %58 = load i8, i8* %6, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %6, align 1
  br label %79

62:                                               ; preds = %26
  %63 = load i8, i8* @CPIA2_VP_FLICKER_MODES_NEVER_FLICKER, align 1
  %64 = zext i8 %63 to i32
  %65 = xor i32 %64, -1
  %66 = load i8, i8* %6, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %6, align 1
  %70 = load i8, i8* @CPIA2_VP_FLICKER_MODES_50HZ, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %71
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %6, align 1
  br label %79

76:                                               ; preds = %26
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %171

79:                                               ; preds = %62, %47, %33
  %80 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %81 = load i32, i32* @CPIA2_CMD_SET_FLICKER_MODES, align 4
  %82 = load i32, i32* @TRANSFER_WRITE, align 4
  %83 = load i8, i8* %6, align 1
  %84 = zext i8 %83 to i32
  %85 = call i32 @cpia2_do_command(%struct.camera_data* %80, i32 %81, i32 %82, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %171

89:                                               ; preds = %79
  %90 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %91 = load i32, i32* @CPIA2_CMD_GET_VP_EXP_MODES, align 4
  %92 = load i32, i32* @TRANSFER_READ, align 4
  %93 = call i32 @cpia2_do_command(%struct.camera_data* %90, i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %171

97:                                               ; preds = %89
  %98 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %99 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 4
  store i8 %102, i8* %6, align 1
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = load i8, i8* @CPIA2_VP_EXPOSURE_MODES_INHIBIT_FLICKER, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* %6, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %6, align 1
  br label %120

112:                                              ; preds = %97
  %113 = load i8, i8* @CPIA2_VP_EXPOSURE_MODES_INHIBIT_FLICKER, align 1
  %114 = zext i8 %113 to i32
  %115 = xor i32 %114, -1
  %116 = load i8, i8* %6, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, %115
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %6, align 1
  br label %120

120:                                              ; preds = %112, %105
  %121 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %122 = load i32, i32* @CPIA2_CMD_SET_VP_EXP_MODES, align 4
  %123 = load i32, i32* @TRANSFER_WRITE, align 4
  %124 = load i8, i8* %6, align 1
  %125 = zext i8 %124 to i32
  %126 = call i32 @cpia2_do_command(%struct.camera_data* %121, i32 %122, i32 %123, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %3, align 4
  br label %171

130:                                              ; preds = %120
  %131 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %132 = load i32, i32* @CPIA2_CMD_REHASH_VP4, align 4
  %133 = load i32, i32* @TRANSFER_WRITE, align 4
  %134 = call i32 @cpia2_do_command(%struct.camera_data* %131, i32 %132, i32 %133, i32 1)
  store i32 %134, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %171

138:                                              ; preds = %130
  %139 = load i32, i32* %5, align 4
  switch i32 %139, label %166 [
    i32 128, label %140
    i32 129, label %146
    i32 130, label %156
  ]

140:                                              ; preds = %138
  %141 = load i32, i32* %5, align 4
  %142 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %143 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 4
  br label %169

146:                                              ; preds = %138
  %147 = load i32, i32* %5, align 4
  %148 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %149 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  %152 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %153 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  store i32 60, i32* %155, align 8
  br label %169

156:                                              ; preds = %138
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %159 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  %162 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %163 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  store i32 50, i32* %165, align 8
  br label %169

166:                                              ; preds = %138
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %166, %156, %146, %140
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %136, %128, %95, %87, %76, %24, %15
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @cpia2_do_command(%struct.camera_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
