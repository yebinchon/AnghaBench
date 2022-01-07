; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_set_packet_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov511_set_packet_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@BRG_OV511 = common dso_local global i64 0, align 8
@OV511_ALT_SIZE_0 = common dso_local global i32 0, align 4
@OV511_ALT_SIZE_257 = common dso_local global i32 0, align 4
@OV511_ALT_SIZE_513 = common dso_local global i32 0, align 4
@OV511_ALT_SIZE_769 = common dso_local global i32 0, align 4
@OV511_ALT_SIZE_993 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Set packet size: invalid size (%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BRG_OV511PLUS = common dso_local global i64 0, align 8
@OV511PLUS_ALT_SIZE_0 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_33 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_129 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_257 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_385 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_513 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_769 = common dso_local global i32 0, align 4
@OV511PLUS_ALT_SIZE_961 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Set packet size: Invalid bridge type\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%d, mult=%d, alt=%d\00", align 1
@R51x_FIFO_PSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Set packet size: set interface error\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OV511_RESET_NOREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32)* @ov511_set_packet_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_set_packet_size(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %9 = call i64 @ov51x_stop(%struct.usb_ov511* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %167

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 5
  store i32 %16, i32* %7, align 4
  %17 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BRG_OV511, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @OV511_ALT_SIZE_0, align 4
  store i32 %26, i32* %6, align 4
  br label %56

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 257
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @OV511_ALT_SIZE_257, align 4
  store i32 %31, i32* %6, align 4
  br label %55

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 513
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @OV511_ALT_SIZE_513, align 4
  store i32 %36, i32* %6, align 4
  br label %54

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 769
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @OV511_ALT_SIZE_769, align 4
  store i32 %41, i32* %6, align 4
  br label %53

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 993
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @OV511_ALT_SIZE_993, align 4
  store i32 %46, i32* %6, align 4
  br label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %167

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %25
  br label %121

57:                                               ; preds = %14
  %58 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %59 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @BRG_OV511PLUS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %116

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @OV511PLUS_ALT_SIZE_0, align 4
  store i32 %67, i32* %6, align 4
  br label %115

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 33
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @OV511PLUS_ALT_SIZE_33, align 4
  store i32 %72, i32* %6, align 4
  br label %114

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 129
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @OV511PLUS_ALT_SIZE_129, align 4
  store i32 %77, i32* %6, align 4
  br label %113

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 257
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @OV511PLUS_ALT_SIZE_257, align 4
  store i32 %82, i32* %6, align 4
  br label %112

83:                                               ; preds = %78
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 385
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* @OV511PLUS_ALT_SIZE_385, align 4
  store i32 %87, i32* %6, align 4
  br label %111

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 513
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @OV511PLUS_ALT_SIZE_513, align 4
  store i32 %92, i32* %6, align 4
  br label %110

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 769
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @OV511PLUS_ALT_SIZE_769, align 4
  store i32 %97, i32* %6, align 4
  br label %109

98:                                               ; preds = %93
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 961
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @OV511PLUS_ALT_SIZE_961, align 4
  store i32 %102, i32* %6, align 4
  br label %108

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %167

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %110, %86
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112, %76
  br label %114

114:                                              ; preds = %113, %71
  br label %115

115:                                              ; preds = %114, %66
  br label %120

116:                                              ; preds = %57
  %117 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %167

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %56
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @PDEBUG(i32 3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123, i32 %124)
  %126 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %127 = load i32, i32* @R51x_FIFO_PSIZE, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @reg_w(%struct.usb_ov511* %126, i32 %127, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %167

134:                                              ; preds = %121
  %135 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %136 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %139 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @usb_set_interface(i32 %137, i32 %140, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %167

148:                                              ; preds = %134
  %149 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %150 = load i32, i32* @OV511_RESET_NOREGS, align 4
  %151 = call i64 @ov51x_reset(%struct.usb_ov511* %149, i32 %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %167

156:                                              ; preds = %148
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %159 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %161 = call i64 @ov51x_restart(%struct.usb_ov511* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %167

166:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %163, %153, %144, %131, %116, %103, %47, %11
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i64 @ov51x_reset(%struct.usb_ov511*, i32) #1

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
