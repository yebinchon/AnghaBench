; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_get_vpd_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_get_vpd_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vpd_params = type { i32*, i32*, i8**, i32, i8*, i8*, i8*, i8*, i8* }
%struct.t3_vpd = type { i32, i32*, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }

@VPD_BASE = common dso_local global i32 0, align 4
@SERNUM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.vpd_params*)* @get_vpd_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vpd_params(%struct.adapter* %0, %struct.vpd_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.vpd_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.t3_vpd, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.vpd_params* %1, %struct.vpd_params** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = load i32, i32* @VPD_BASE, align 4
  %12 = bitcast %struct.t3_vpd* %9 to i32*
  %13 = call i32 @t3_seeprom_read(%struct.adapter* %10, i32 %11, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %179

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 130
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @VPD_BASE, align 4
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %46, %25
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 64
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = bitcast %struct.t3_vpd* %9 to i32*
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @t3_seeprom_read(%struct.adapter* %32, i32 %35, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %179

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %6, align 4
  br label %27

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @simple_strtoul(i32 %51, i32* null, i32 10)
  %53 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %54 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @simple_strtoul(i32 %56, i32* null, i32 10)
  %58 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %59 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @simple_strtoul(i32 %61, i32* null, i32 10)
  %63 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %64 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @simple_strtoul(i32 %66, i32* null, i32 10)
  %68 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %69 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @simple_strtoul(i32 %71, i32* null, i32 10)
  %73 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %74 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %73, i32 0, i32 4
  store i8* %72, i8** %74, align 8
  %75 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %76 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SERNUM_LEN, align 4
  %81 = call i32 @memcpy(i32 %77, i32 %79, i32 %80)
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %49
  %88 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %87
  %94 = load %struct.adapter*, %struct.adapter** %4, align 8
  %95 = call i64 @uses_xaui(%struct.adapter* %94)
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 1, i32 2
  %99 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %100 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.adapter*, %struct.adapter** %4, align 8
  %104 = call i64 @uses_xaui(%struct.adapter* %103)
  %105 = icmp ne i64 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 6, i32 2
  %108 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %109 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 %107, i32* %111, align 4
  br label %145

112:                                              ; preds = %87, %49
  %113 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @hex_to_bin(i32 %116)
  %118 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %119 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  store i32 %117, i32* %121, align 4
  %122 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @hex_to_bin(i32 %125)
  %127 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %128 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %126, i32* %130, align 4
  %131 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @simple_strtoul(i32 %132, i32* null, i32 16)
  %134 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %135 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %134, i32 0, i32 2
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  store i8* %133, i8** %137, align 8
  %138 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @simple_strtoul(i32 %139, i32* null, i32 16)
  %141 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %142 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %141, i32 0, i32 2
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  store i8* %140, i8** %144, align 8
  br label %145

145:                                              ; preds = %112, %93
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %175, %145
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 6
  br i1 %148, label %149, label %178

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = mul nsw i32 2, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @hex_to_bin(i32 %156)
  %158 = mul nsw i32 %157, 16
  %159 = getelementptr inbounds %struct.t3_vpd, %struct.t3_vpd* %9, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = mul nsw i32 2, %161
  %163 = add nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @hex_to_bin(i32 %166)
  %168 = add nsw i32 %158, %167
  %169 = load %struct.vpd_params*, %struct.vpd_params** %5, align 8
  %170 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %149
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %146

178:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %178, %43, %16
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @t3_seeprom_read(%struct.adapter*, i32, i32*) #1

declare dso_local i8* @simple_strtoul(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

declare dso_local i32 @hex_to_bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
