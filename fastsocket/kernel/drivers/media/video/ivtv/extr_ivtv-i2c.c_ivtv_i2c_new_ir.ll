; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_i2c_new_ir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_i2c_new_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i8*, %struct.IR_i2c_init_data, %struct.i2c_adapter }
%struct.IR_i2c_init_data = type { i8*, i8*, i32, i32, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, %struct.IR_i2c_init_data* }

@I2C_CLIENT_END = common dso_local global i16 0, align 2
@IVTV_HW_IR_TX_ANY = common dso_local global i32 0, align 4
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@IVTV_HW_IR_RX_ANY = common dso_local global i32 0, align 4
@RC_MAP_AVERMEDIA_CARDBUS = common dso_local global i32 0, align 4
@IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = common dso_local global i32 0, align 4
@RC_TYPE_OTHER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"AVerMedia AVerTV card\00", align 1
@RC_MAP_RC5_TV = common dso_local global i32 0, align 4
@IR_KBD_GET_KEY_HAUP = common dso_local global i32 0, align 4
@RC_TYPE_RC5 = common dso_local global i8* null, align 8
@RC_MAP_HAUPPAUGE_NEW = common dso_local global i32 0, align 4
@IR_KBD_GET_KEY_HAUP_XVR = common dso_local global i32 0, align 4
@get_key_adaptec = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@RC_TYPE_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32, i8*, i16)* @ivtv_i2c_new_ir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_i2c_new_ir(%struct.ivtv* %0, i32 %1, i8* %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.i2c_board_info, align 8
  %11 = alloca %struct.i2c_adapter*, align 8
  %12 = alloca %struct.IR_i2c_init_data*, align 8
  %13 = alloca [2 x i16], align 2
  store %struct.ivtv* %0, %struct.ivtv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i16 %3, i16* %9, align 2
  %14 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 3
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %11, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 2
  store %struct.IR_i2c_init_data* %17, %struct.IR_i2c_init_data** %12, align 8
  %18 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i64 0, i64 0
  %19 = load i16, i16* %9, align 2
  store i16 %19, i16* %18, align 2
  %20 = getelementptr inbounds i16, i16* %18, i64 1
  %21 = load i16, i16* @I2C_CLIENT_END, align 2
  store i16 %21, i16* %20, align 2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IVTV_HW_IR_TX_ANY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %4
  %27 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %28 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IVTV_HW_IR_TX_ANY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %129

34:                                               ; preds = %26
  %35 = call i32 @memset(%struct.i2c_board_info* %10, i32 0, i32 16)
  %36 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @I2C_NAME_SIZE, align 4
  %40 = call i32 @strlcpy(i32 %37, i8* %38, i32 %39)
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %42 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i64 0, i64 0
  %43 = call i32* @i2c_new_probed_device(%struct.i2c_adapter* %41, %struct.i2c_board_info* %10, i16* %42)
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 -1, i32 0
  store i32 %46, i32* %5, align 4
  br label %129

47:                                               ; preds = %4
  %48 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IVTV_HW_IR_RX_ANY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %129

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %114 [
    i32 131, label %57
    i32 130, label %69
    i32 129, label %69
    i32 128, label %84
    i32 132, label %99
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* @RC_MAP_AVERMEDIA_CARDBUS, align 4
  %59 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %60 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @IR_KBD_GET_KEY_AVERMEDIA_CARDBUS, align 4
  %62 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %63 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @RC_TYPE_OTHER, align 8
  %65 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %66 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %68 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %67, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %68, align 8
  br label %114

69:                                               ; preds = %55, %55
  %70 = load i32, i32* @RC_MAP_RC5_TV, align 4
  %71 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %72 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @IR_KBD_GET_KEY_HAUP, align 4
  %74 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %75 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** @RC_TYPE_RC5, align 8
  %77 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %78 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %83 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  br label %114

84:                                               ; preds = %55
  %85 = load i32, i32* @RC_MAP_HAUPPAUGE_NEW, align 4
  %86 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %87 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @IR_KBD_GET_KEY_HAUP_XVR, align 4
  %89 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %90 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** @RC_TYPE_RC5, align 8
  %92 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %93 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %98 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %114

99:                                               ; preds = %55
  %100 = load i32, i32* @get_key_adaptec, align 4
  %101 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %102 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %104 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %107 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @RC_MAP_EMPTY, align 4
  %109 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %110 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i8*, i8** @RC_TYPE_UNKNOWN, align 8
  %112 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %113 = getelementptr inbounds %struct.IR_i2c_init_data, %struct.IR_i2c_init_data* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %55, %99, %84, %69, %57
  %115 = call i32 @memset(%struct.i2c_board_info* %10, i32 0, i32 16)
  %116 = load %struct.IR_i2c_init_data*, %struct.IR_i2c_init_data** %12, align 8
  %117 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 1
  store %struct.IR_i2c_init_data* %116, %struct.IR_i2c_init_data** %117, align 8
  %118 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* @I2C_NAME_SIZE, align 4
  %122 = call i32 @strlcpy(i32 %119, i8* %120, i32 %121)
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  %124 = getelementptr inbounds [2 x i16], [2 x i16]* %13, i64 0, i64 0
  %125 = call i32* @i2c_new_probed_device(%struct.i2c_adapter* %123, %struct.i2c_board_info* %10, i16* %124)
  %126 = icmp eq i32* %125, null
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 -1, i32 0
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %114, %54, %34, %33
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.i2c_board_info*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32* @i2c_new_probed_device(%struct.i2c_adapter*, %struct.i2c_board_info*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
