; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_retrieve_bss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_atmel.c_retrieve_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_private*)* @retrieve_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_bss(%struct.atmel_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atmel_private* %0, %struct.atmel_private** %3, align 8
  store i32 -128, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %188

12:                                               ; preds = %1
  %13 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %98

17:                                               ; preds = %12
  %18 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %93, %17
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %96

26:                                               ; preds = %20
  %27 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %28 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %29, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %26
  %40 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %44, %39
  %55 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %56 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %61 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %59, %44
  %70 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %71 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 128
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %69
  %81 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %82 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %91 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %80, %69, %59, %54, %26
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %20

96:                                               ; preds = %20
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %188

98:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %183, %98
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %102 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %186

105:                                              ; preds = %99
  %106 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %107 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %110 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %108, %116
  br i1 %117, label %118, label %182

118:                                              ; preds = %105
  %119 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %120 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %123 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %122, i32 0, i32 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %131 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @memcmp(i32 %121, i32 %129, i64 %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %182

135:                                              ; preds = %118
  %136 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %137 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %140 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %139, i32 0, i32 4
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %138, %146
  br i1 %147, label %148, label %182

148:                                              ; preds = %135
  %149 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %150 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %151 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %150, i32 0, i32 4
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @atmel_validate_channel(%struct.atmel_private* %149, i32 %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %148
  %161 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %162 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %5, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %160
  %172 = load %struct.atmel_private*, %struct.atmel_private** %3, align 8
  %173 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %171, %160
  br label %182

182:                                              ; preds = %181, %148, %135, %118, %105
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %4, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %4, align 4
  br label %99

186:                                              ; preds = %99
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %96, %11
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @atmel_validate_channel(%struct.atmel_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
