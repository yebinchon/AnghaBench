; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_b1.c_b1_load_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/avm/extr_b1.c_b1_load_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i64 }

@FWBUF_SIZE = common dso_local global i32 0, align 4
@SEND_CONFIG = common dso_local global i8 0, align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b1_load_config(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %14 = load i32, i32* @FWBUF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load i8, i8* @SEND_CONFIG, align 1
  %32 = call i32 @b1_put_byte(i32 %30, i8 zeroext %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @b1_put_word(i32 %33, i32 1)
  %35 = load i32, i32* %9, align 4
  %36 = load i8, i8* @SEND_CONFIG, align 1
  %37 = call i32 @b1_put_byte(i32 %35, i8 zeroext %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @b1_put_word(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %29, %2
  br label %42

42:                                               ; preds = %88, %41
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @FWBUF_SIZE, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* @FWBUF_SIZE, align 4
  %54 = call i64 @copy_from_user(i8* %17, i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

59:                                               ; preds = %51
  br label %64

60:                                               ; preds = %46
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @FWBUF_SIZE, align 4
  %63 = call i32 @memcpy(i8* %17, i8* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %59
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @FWBUF_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = load i8, i8* @SEND_CONFIG, align 1
  %72 = call i32 @b1_put_byte(i32 %70, i8 zeroext %71)
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %84, %69
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %17, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @b1_put_byte(i32 %77, i8 zeroext %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %73

87:                                               ; preds = %73
  br label %65

88:                                               ; preds = %65
  %89 = load i32, i32* @FWBUF_SIZE, align 4
  %90 = load i32, i32* %12, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* @FWBUF_SIZE, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %8, align 8
  br label %42

96:                                               ; preds = %42
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %150

99:                                               ; preds = %96
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @copy_from_user(i8* %17, i8* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @EFAULT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

112:                                              ; preds = %104
  br label %117

113:                                              ; preds = %99
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @memcpy(i8* %17, i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %112
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %148, %117
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %149

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = load i8, i8* @SEND_CONFIG, align 1
  %125 = call i32 @b1_put_byte(i32 %123, i8 zeroext %124)
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %145, %122
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %12, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %17, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = call i32 @b1_put_byte(i32 %134, i8 zeroext %139)
  br label %144

141:                                              ; preds = %129
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @b1_put_byte(i32 %142, i8 zeroext 0)
  br label %144

144:                                              ; preds = %141, %133
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %126

148:                                              ; preds = %126
  br label %118

149:                                              ; preds = %118
  br label %150

150:                                              ; preds = %149, %96
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %151

151:                                              ; preds = %150, %109, %56
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @b1_put_byte(i32, i8 zeroext) #2

declare dso_local i32 @b1_put_word(i32, i32) #2

declare dso_local i64 @copy_from_user(i8*, i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
