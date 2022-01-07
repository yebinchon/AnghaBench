; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_get_cs_base_and_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_get_cs_base_and_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.amd64_pvt = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32* }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@K8_REV_F = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*, i32, i64, i32*, i32*)* @get_cs_base_and_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_cs_base_and_mask(%struct.amd64_pvt* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %17 = icmp eq i32 %16, 15
  br i1 %17, label %18, label %53

18:                                               ; preds = %5
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @K8_REV_F, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %18
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %26 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = call i32 @GENMASK(i32 21, i32 31)
  %48 = call i32 @GENMASK(i32 9, i32 15)
  %49 = or i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = call i32 @GENMASK(i32 21, i32 29)
  %51 = call i32 @GENMASK(i32 9, i32 15)
  %52 = or i32 %50, %51
  store i32 %52, i32* %14, align 4
  store i64 4, i64* %15, align 8
  br label %152

53:                                               ; preds = %18, %5
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %55 = icmp eq i32 %54, 22
  br i1 %55, label %56, label %116

56:                                               ; preds = %53
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %58 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %69 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @GENMASK(i32 5, i32 15)
  %82 = and i32 %80, %81
  %83 = shl i32 %82, 6
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @GENMASK(i32 19, i32 30)
  %87 = and i32 %85, %86
  %88 = shl i32 %87, 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 -1, i32* %92, align 4
  %93 = call i32 @GENMASK(i32 5, i32 15)
  %94 = shl i32 %93, 6
  %95 = call i32 @GENMASK(i32 19, i32 30)
  %96 = shl i32 %95, 8
  %97 = or i32 %94, %96
  %98 = xor i32 %97, -1
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @GENMASK(i32 5, i32 15)
  %104 = and i32 %102, %103
  %105 = shl i32 %104, 6
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @GENMASK(i32 19, i32 30)
  %111 = and i32 %109, %110
  %112 = shl i32 %111, 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %178

116:                                              ; preds = %53
  %117 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %118 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %11, align 4
  %128 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %129 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = ashr i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %12, align 4
  store i64 8, i64* %15, align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0), align 4
  %141 = icmp eq i32 %140, 21
  br i1 %141, label %142, label %146

142:                                              ; preds = %116
  %143 = call i32 @GENMASK(i32 19, i32 30)
  %144 = call i32 @GENMASK(i32 5, i32 13)
  %145 = or i32 %143, %144
  store i32 %145, i32* %14, align 4
  store i32 %145, i32* %13, align 4
  br label %150

146:                                              ; preds = %116
  %147 = call i32 @GENMASK(i32 19, i32 28)
  %148 = call i32 @GENMASK(i32 5, i32 13)
  %149 = or i32 %147, %148
  store i32 %149, i32* %14, align 4
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %24
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = and i32 %153, %154
  %156 = load i64, i64* %15, align 8
  %157 = trunc i64 %156 to i32
  %158 = shl i32 %155, %157
  %159 = load i32*, i32** %9, align 8
  store i32 %158, i32* %159, align 4
  %160 = load i32*, i32** %10, align 8
  store i32 -1, i32* %160, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i64, i64* %15, align 8
  %163 = trunc i64 %162 to i32
  %164 = shl i32 %161, %163
  %165 = xor i32 %164, -1
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %165
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %14, align 4
  %171 = and i32 %169, %170
  %172 = load i64, i64* %15, align 8
  %173 = trunc i64 %172 to i32
  %174 = shl i32 %171, %173
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %152, %56
  ret void
}

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
