; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_adi.c_adi_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.adi = type { i8*, i16*, i64, i64, i32, i32, i32, i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@adi_hat_to_axis = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adi*)* @adi_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adi_decode(%struct.adi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adi*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adi* %0, %struct.adi** %3, align 8
  %9 = load %struct.adi*, %struct.adi** %3, align 8
  %10 = getelementptr inbounds %struct.adi, %struct.adi* %9, i32 0, i32 10
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %4, align 8
  %12 = load %struct.adi*, %struct.adi** %3, align 8
  %13 = getelementptr inbounds %struct.adi, %struct.adi* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.adi*, %struct.adi** %3, align 8
  %16 = getelementptr inbounds %struct.adi, %struct.adi* %15, i32 0, i32 1
  %17 = load i16*, i16** %16, align 8
  store i16* %17, i16** %6, align 8
  %18 = load %struct.adi*, %struct.adi** %3, align 8
  %19 = getelementptr inbounds %struct.adi, %struct.adi* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.adi*, %struct.adi** %3, align 8
  %22 = getelementptr inbounds %struct.adi, %struct.adi* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %1
  %26 = load %struct.adi*, %struct.adi** %3, align 8
  %27 = getelementptr inbounds %struct.adi, %struct.adi* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.adi*, %struct.adi** %3, align 8
  %30 = call i32 @adi_get_bits(%struct.adi* %29, i32 4)
  %31 = load %struct.adi*, %struct.adi** %3, align 8
  %32 = call i32 @adi_get_bits(%struct.adi* %31, i32 4)
  %33 = shl i32 %32, 4
  %34 = or i32 %30, %33
  %35 = icmp ne i32 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25, %1
  store i32 -1, i32* %2, align 4
  br label %195

37:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.adi*, %struct.adi** %3, align 8
  %41 = getelementptr inbounds %struct.adi, %struct.adi* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = load %struct.adi*, %struct.adi** %3, align 8
  %51 = call i32 @adi_get_bits(%struct.adi* %50, i32 10)
  %52 = call i32 @input_report_abs(%struct.input_dev* %45, i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %38

56:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.adi*, %struct.adi** %3, align 8
  %60 = getelementptr inbounds %struct.adi, %struct.adi* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = load %struct.adi*, %struct.adi** %3, align 8
  %70 = call i32 @adi_get_bits(%struct.adi* %69, i32 8)
  %71 = call i32 @input_report_abs(%struct.input_dev* %64, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %57

75:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %130, %75
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.adi*, %struct.adi** %3, align 8
  %79 = getelementptr inbounds %struct.adi, %struct.adi* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 63
  br label %85

85:                                               ; preds = %82, %76
  %86 = phi i1 [ false, %76 ], [ %84, %82 ]
  br i1 %86, label %87, label %133

87:                                               ; preds = %85
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.adi*, %struct.adi** %3, align 8
  %90 = getelementptr inbounds %struct.adi, %struct.adi* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %87
  %94 = load %struct.adi*, %struct.adi** %3, align 8
  %95 = call i32 @adi_get_bits(%struct.adi* %94, i32 4)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  %99 = load i8, i8* %97, align 1
  %100 = sext i8 %99 to i32
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 2
  %103 = and i32 %102, 1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 1
  %106 = sub nsw i32 %103, %105
  %107 = call i32 @input_report_abs(%struct.input_dev* %96, i32 %100, i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 1
  %115 = and i32 %114, 1
  %116 = load i32, i32* %8, align 4
  %117 = ashr i32 %116, 3
  %118 = and i32 %117, 1
  %119 = sub nsw i32 %115, %118
  %120 = call i32 @input_report_abs(%struct.input_dev* %108, i32 %112, i32 %119)
  br label %121

121:                                              ; preds = %93, %87
  %122 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %123 = load i16*, i16** %6, align 8
  %124 = getelementptr inbounds i16, i16* %123, i32 1
  store i16* %124, i16** %6, align 8
  %125 = load i16, i16* %123, align 2
  %126 = sext i16 %125 to i32
  %127 = load %struct.adi*, %struct.adi** %3, align 8
  %128 = call i32 @adi_get_bits(%struct.adi* %127, i32 1)
  %129 = call i32 @input_report_key(%struct.input_dev* %122, i32 %126, i32 %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %76

133:                                              ; preds = %85
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %170, %133
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.adi*, %struct.adi** %3, align 8
  %137 = getelementptr inbounds %struct.adi, %struct.adi* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %173

140:                                              ; preds = %134
  %141 = load %struct.adi*, %struct.adi** %3, align 8
  %142 = call i32 @adi_get_bits(%struct.adi* %141, i32 4)
  store i32 %142, i32* %8, align 4
  %143 = icmp sgt i32 %142, 8
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %144, %140
  %146 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %5, align 8
  %149 = load i8, i8* %147, align 1
  %150 = sext i8 %149 to i32
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adi_hat_to_axis, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @input_report_abs(%struct.input_dev* %146, i32 %150, i32 %156)
  %158 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %5, align 8
  %161 = load i8, i8* %159, align 1
  %162 = sext i8 %161 to i32
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @adi_hat_to_axis, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @input_report_abs(%struct.input_dev* %158, i32 %162, i32 %168)
  br label %170

170:                                              ; preds = %145
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %134

173:                                              ; preds = %134
  store i32 63, i32* %7, align 4
  br label %174

174:                                              ; preds = %189, %173
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.adi*, %struct.adi** %3, align 8
  %177 = getelementptr inbounds %struct.adi, %struct.adi* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %174
  %181 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %182 = load i16*, i16** %6, align 8
  %183 = getelementptr inbounds i16, i16* %182, i32 1
  store i16* %183, i16** %6, align 8
  %184 = load i16, i16* %182, align 2
  %185 = sext i16 %184 to i32
  %186 = load %struct.adi*, %struct.adi** %3, align 8
  %187 = call i32 @adi_get_bits(%struct.adi* %186, i32 1)
  %188 = call i32 @input_report_key(%struct.input_dev* %181, i32 %185, i32 %187)
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %174

192:                                              ; preds = %174
  %193 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %194 = call i32 @input_sync(%struct.input_dev* %193)
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %192, %36
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @adi_get_bits(%struct.adi*, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
