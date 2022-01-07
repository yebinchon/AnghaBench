; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_cm4000_cs.c_parse_atr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_cm4000_cs.c_parse_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm4000_dev = type { i32, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"-> parse_atr: dev->atr_len = %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"parse_atr: atr_len < 3\0A\00", align 1
@IS_INVREV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Card says FiDi is 0x%.2x\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Yi=%.2x\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"card is capable of T=1\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"card is capable of T=0\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"ix=%d noHist=%d any_t1=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"length error\0A\00", align 1
@IS_ANY_T0 = common dso_local global i32 0, align 4
@IS_ANY_T1 = common dso_local global i32 0, align 4
@IS_BAD_CSUM = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm4000_dev*)* @parse_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_atr(%struct.cm4000_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm4000_dev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cm4000_dev* %0, %struct.cm4000_dev** %3, align 8
  %10 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %11 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 3, %struct.cm4000_dev* %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %16 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %21 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %203

22:                                               ; preds = %1
  %23 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 63
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @IS_INVREV, align 4
  %31 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %32 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %31, i32 0, i32 5
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %39

34:                                               ; preds = %22
  %35 = load i32, i32* @IS_INVREV, align 4
  %36 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %37 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %36, i32 0, i32 5
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  store i32 1, i32* %8, align 4
  store i8 1, i8* %7, align 1
  %40 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %41 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %6, align 1
  %46 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  store i32 0, i32* %9, align 4
  store i8 0, i8* %5, align 1
  store i8 0, i8* %4, align 1
  %48 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %49 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %48, i32 0, i32 3
  store i32 17, i32* %49, align 4
  br label %50

50:                                               ; preds = %142, %39
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %61 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %66 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %68 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %69 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i8, i8* %7, align 1
  %73 = add i8 %72, 1
  store i8 %73, i8* %7, align 1
  br label %89

74:                                               ; preds = %54, %50
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %85 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %84, i32 0, i32 3
  store i32 17, i32* %85, align 4
  %86 = load i8, i8* %7, align 1
  %87 = add i8 %86, 1
  store i8 %87, i8* %7, align 1
  br label %88

88:                                               ; preds = %83, %78, %74
  br label %89

89:                                               ; preds = %88, %59
  %90 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %91 = load i8, i8* %6, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 240
  %94 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i8, i8* %6, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 16
  %98 = ashr i32 %97, 4
  %99 = load i8, i8* %6, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 32
  %102 = ashr i32 %101, 5
  %103 = add nsw i32 %98, %102
  %104 = load i8, i8* %6, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 64
  %107 = ashr i32 %106, 6
  %108 = add nsw i32 %103, %107
  %109 = load i8, i8* %6, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 128
  %112 = ashr i32 %111, 7
  %113 = add nsw i32 %108, %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %8, align 4
  %116 = load i8, i8* %6, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 128
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %89
  %121 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %122 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %6, align 1
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 15
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  store i8 1, i8* %4, align 1
  %134 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %135 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %139

136:                                              ; preds = %120
  store i8 1, i8* %5, align 1
  %137 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %138 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  br label %141

140:                                              ; preds = %89
  store i32 1, i32* %9, align 4
  br label %141

141:                                              ; preds = %140, %139
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br i1 %145, label %50, label %146

146:                                              ; preds = %142
  %147 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %150 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 15
  %155 = load i8, i8* %4, align 1
  %156 = zext i8 %155 to i32
  %157 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %148, i32 %154, i32 %156)
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  %160 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %161 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 15
  %166 = add nsw i32 %159, %165
  %167 = load i8, i8* %4, align 1
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %166, %168
  %170 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %171 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %146
  %175 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %176 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %175, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %203

177:                                              ; preds = %146
  %178 = load i8, i8* %5, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load i32, i32* @IS_ANY_T0, align 4
  %182 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %183 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %182, i32 0, i32 5
  %184 = call i32 @set_bit(i32 %181, i32* %183)
  br label %185

185:                                              ; preds = %180, %177
  %186 = load i8, i8* %4, align 1
  %187 = icmp ne i8 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %190 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %189, i32 0, i32 4
  store i32 0, i32* %190, align 8
  %191 = load i8, i8* %5, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %196 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %195, i32 0, i32 2
  store i32 1, i32* %196, align 8
  br label %197

197:                                              ; preds = %194, %188
  %198 = load i32, i32* @IS_ANY_T1, align 4
  %199 = load %struct.cm4000_dev*, %struct.cm4000_dev** %3, align 8
  %200 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %199, i32 0, i32 5
  %201 = call i32 @set_bit(i32 %198, i32* %200)
  br label %202

202:                                              ; preds = %197, %185
  store i32 1, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %174, %19
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
