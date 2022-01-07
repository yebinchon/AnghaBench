; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_frag_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_tx_frag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i32*, %struct.TYPE_2__*, %struct.tg3* }
%struct.TYPE_2__ = type { i32 }
%struct.tg3 = type { i32 }

@SHORT_DMA_BUG = common dso_local global i32 0, align 4
@TXD_FLAG_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3_napi*, i32*, i32*, i32, i32, i32, i32, i32)* @tg3_tx_frag_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_tx_frag_set(%struct.tg3_napi* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.tg3_napi*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tg3*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tg3_napi* %0, %struct.tg3_napi** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load %struct.tg3_napi*, %struct.tg3_napi** %9, align 8
  %23 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %22, i32 0, i32 2
  %24 = load %struct.tg3*, %struct.tg3** %23, align 8
  store %struct.tg3* %24, %struct.tg3** %17, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.tg3*, %struct.tg3** %17, align 8
  %26 = load i32, i32* @SHORT_DMA_BUG, align 4
  %27 = call i64 @tg3_flag(%struct.tg3* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %8
  %30 = load i32, i32* %13, align 4
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %18, align 4
  br label %33

33:                                               ; preds = %32, %29, %8
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @tg3_4g_overflow_test(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %18, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.tg3*, %struct.tg3** %17, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @tg3_4g_tso_overflow_test(%struct.tg3* %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %18, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.tg3*, %struct.tg3** %17, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i64 @tg3_40bit_overflow_test(%struct.tg3* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %18, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load %struct.tg3*, %struct.tg3** %17, align 8
  %56 = getelementptr inbounds %struct.tg3, %struct.tg3* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %172

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %19, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @TXD_FLAG_END, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %100, %59
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.tg3*, %struct.tg3** %17, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %66
  %77 = phi i1 [ false, %66 ], [ %75, %72 ]
  br i1 %77, label %78, label %134

78:                                               ; preds = %76
  %79 = load %struct.tg3*, %struct.tg3** %17, align 8
  %80 = getelementptr inbounds %struct.tg3, %struct.tg3* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %21, align 4
  %82 = load %struct.tg3*, %struct.tg3** %17, align 8
  %83 = getelementptr inbounds %struct.tg3, %struct.tg3* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sle i32 %87, 8
  br i1 %88, label %89, label %100

89:                                               ; preds = %78
  %90 = load %struct.tg3*, %struct.tg3** %17, align 8
  %91 = getelementptr inbounds %struct.tg3, %struct.tg3* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %13, align 4
  %96 = load %struct.tg3*, %struct.tg3** %17, align 8
  %97 = getelementptr inbounds %struct.tg3, %struct.tg3* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 2
  store i32 %99, i32* %21, align 4
  br label %100

100:                                              ; preds = %89, %78
  %101 = load %struct.tg3_napi*, %struct.tg3_napi** %9, align 8
  %102 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.tg3_napi*, %struct.tg3_napi** %9, align 8
  %110 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @tg3_tx_set_bd(i32* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %19, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @NEXT_TX(i32 %128)
  %130 = load i32*, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %66

134:                                              ; preds = %76
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %134
  %138 = load i32*, i32** %11, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = load %struct.tg3_napi*, %struct.tg3_napi** %9, align 8
  %143 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @tg3_tx_set_bd(i32* %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @NEXT_TX(i32 %159)
  %161 = load i32*, i32** %10, align 8
  store i32 %160, i32* %161, align 4
  br label %170

162:                                              ; preds = %137
  store i32 1, i32* %18, align 4
  %163 = load %struct.tg3_napi*, %struct.tg3_napi** %9, align 8
  %164 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %162, %141
  br label %171

171:                                              ; preds = %170, %134
  br label %190

172:                                              ; preds = %54
  %173 = load %struct.tg3_napi*, %struct.tg3_napi** %9, align 8
  %174 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @tg3_tx_set_bd(i32* %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32*, i32** %10, align 8
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @NEXT_TX(i32 %187)
  %189 = load i32*, i32** %10, align 8
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %172, %171
  %191 = load i32, i32* %18, align 4
  ret i32 %191
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_4g_overflow_test(i32, i32) #1

declare dso_local i64 @tg3_4g_tso_overflow_test(%struct.tg3*, i32, i32, i32) #1

declare dso_local i64 @tg3_40bit_overflow_test(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_tx_set_bd(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
