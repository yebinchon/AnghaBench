; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_hardsetup_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_hardsetup_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_8__, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hrdsetup\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%s Retrying to do IDX activates.\0A\00", align 1
@QETH_CARD_TYPE_IQD = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"break1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"1err%d\00", align 1
@qeth_idx_read_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"break2\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"3err%d\00", align 1
@qeth_idx_write_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"break3\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"4err%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"5err%d\00", align 1
@QETH_PROT_IPV4 = common dso_local global i32 0, align 4
@IPA_SETADAPTERPARMS = common dso_local global i32 0, align 4
@IPA_SETADP_SET_DIAG_ASSIST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [65 x i8] c"The qeth device driver failed to recover an error on the device\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%s Initialization in hardsetup failed! rc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qeth_core_hardsetup_card(%struct.qeth_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 3, i32* %4, align 4
  %6 = load i32, i32* @SETUP, align 4
  %7 = call i32 @QETH_DBF_TEXT(i32 %6, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %9 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %8, i32 0, i32 6
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %12 = call i32 @qeth_get_channel_path_desc(%struct.qeth_card* %11)
  br label %13

13:                                               ; preds = %128, %102, %70, %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %18 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i32 @dev_name(i32* %20)
  %22 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %24 = call i32 @CARD_DDEV(%struct.qeth_card* %23)
  %25 = call i32 @ccw_device_set_offline(i32 %24)
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = call i32 @CARD_WDEV(%struct.qeth_card* %26)
  %28 = call i32 @ccw_device_set_offline(i32 %27)
  %29 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %30 = call i32 @CARD_RDEV(%struct.qeth_card* %29)
  %31 = call i32 @ccw_device_set_offline(i32 %30)
  %32 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %33 = call i32 @CARD_RDEV(%struct.qeth_card* %32)
  %34 = call i32 @ccw_device_set_online(i32 %33)
  %35 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %36 = call i32 @CARD_WDEV(%struct.qeth_card* %35)
  %37 = call i32 @ccw_device_set_online(i32 %36)
  %38 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %39 = call i32 @CARD_DDEV(%struct.qeth_card* %38)
  %40 = call i32 @ccw_device_set_online(i32 %39)
  br label %41

41:                                               ; preds = %16, %13
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %44 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QETH_CARD_TYPE_IQD, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @qeth_qdio_clear_card(%struct.qeth_card* %42, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load i32, i32* @SETUP, align 4
  %57 = call i32 @QETH_DBF_TEXT(i32 %56, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %186

59:                                               ; preds = %41
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @SETUP, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @QETH_DBF_TEXT_(i32 %63, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %172

70:                                               ; preds = %62
  br label %13

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %74 = call i32 @qeth_determine_capabilities(%struct.qeth_card* %73)
  %75 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %76 = call i32 @qeth_init_tokens(%struct.qeth_card* %75)
  %77 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %78 = call i32 @qeth_init_func_level(%struct.qeth_card* %77)
  %79 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %80 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %79, i32 0, i32 5
  %81 = load i32, i32* @qeth_idx_read_cb, align 4
  %82 = call i32 @qeth_idx_activate_channel(i32* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @ERESTARTSYS, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %72
  %88 = load i32, i32* @SETUP, align 4
  %89 = call i32 @QETH_DBF_TEXT(i32 %88, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %186

91:                                               ; preds = %72
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* @SETUP, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @QETH_DBF_TEXT_(i32 %95, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %172

102:                                              ; preds = %94
  br label %13

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 4
  %107 = load i32, i32* @qeth_idx_write_cb, align 4
  %108 = call i32 @qeth_idx_activate_channel(i32* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @ERESTARTSYS, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* @SETUP, align 4
  %115 = call i32 @QETH_DBF_TEXT(i32 %114, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %186

117:                                              ; preds = %104
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32, i32* @SETUP, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @QETH_DBF_TEXT_(i32 %121, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %4, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %172

128:                                              ; preds = %120
  br label %13

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %132 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  %133 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %134 = call i32 @qeth_mpc_initialize(%struct.qeth_card* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @SETUP, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @QETH_DBF_TEXT_(i32 %138, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %139)
  br label %172

141:                                              ; preds = %130
  %142 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %143 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %147 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  store i64 0, i64* %149, align 8
  %150 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %151 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %154 = load i32, i32* @QETH_PROT_IPV4, align 4
  %155 = call i32 @qeth_query_ipassists(%struct.qeth_card* %153, i32 %154)
  %156 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %157 = load i32, i32* @IPA_SETADAPTERPARMS, align 4
  %158 = call i64 @qeth_is_supported(%struct.qeth_card* %156, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %141
  %161 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %162 = call i32 @qeth_query_setadapterparms(%struct.qeth_card* %161)
  br label %163

163:                                              ; preds = %160, %141
  %164 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %165 = load i32, i32* @IPA_SETADP_SET_DIAG_ASSIST, align 4
  %166 = call i64 @qeth_adp_supported(%struct.qeth_card* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %170 = call i32 @qeth_query_setdiagass(%struct.qeth_card* %169)
  br label %171

171:                                              ; preds = %168, %163
  store i32 0, i32* %2, align 4
  br label %186

172:                                              ; preds = %137, %127, %101, %69
  %173 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %174 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %173, i32 0, i32 0
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = call i32 @dev_warn(i32* %176, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0))
  %178 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %179 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %178, i32 0, i32 0
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = call i32 @dev_name(i32* %181)
  %183 = load i32, i32* %5, align 4
  %184 = call i32 (i32, i8*, i32, ...) @QETH_DBF_MESSAGE(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %182, i32 %183)
  %185 = load i32, i32* %5, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %172, %171, %113, %87, %55
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @QETH_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @qeth_get_channel_path_desc(%struct.qeth_card*) #1

declare dso_local i32 @QETH_DBF_MESSAGE(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ccw_device_set_offline(i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_WDEV(%struct.qeth_card*) #1

declare dso_local i32 @CARD_RDEV(%struct.qeth_card*) #1

declare dso_local i32 @ccw_device_set_online(i32) #1

declare dso_local i32 @qeth_qdio_clear_card(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @qeth_determine_capabilities(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_tokens(%struct.qeth_card*) #1

declare dso_local i32 @qeth_init_func_level(%struct.qeth_card*) #1

declare dso_local i32 @qeth_idx_activate_channel(i32*, i32) #1

declare dso_local i32 @qeth_mpc_initialize(%struct.qeth_card*) #1

declare dso_local i32 @qeth_query_ipassists(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_query_setadapterparms(%struct.qeth_card*) #1

declare dso_local i64 @qeth_adp_supported(%struct.qeth_card*, i32) #1

declare dso_local i32 @qeth_query_setdiagass(%struct.qeth_card*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
