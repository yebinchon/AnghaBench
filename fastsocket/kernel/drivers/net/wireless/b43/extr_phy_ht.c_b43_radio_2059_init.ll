; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_radio_2059_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_radio_2059_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@R2059_C1 = common dso_local global i64 0, align 8
@R2059_C2 = common dso_local global i64 0, align 8
@R2059_C3 = common dso_local global i64 0, align 8
@R2059_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"radio 0x945 timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"radio 0x140 timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_radio_2059_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_radio_2059_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca [3 x i64], align 16
  %4 = alloca [3 x [2 x i64]], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %8 = load i64, i64* @R2059_C1, align 8
  store i64 %8, i64* %7, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 1
  %10 = load i64, i64* @R2059_C2, align 8
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 1
  %12 = load i64, i64* @R2059_C3, align 8
  store i64 %12, i64* %11, align 8
  %13 = bitcast [3 x [2 x i64]]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 48, i1 false)
  %14 = bitcast i8* %13 to [3 x [2 x i64]]*
  %15 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i32 0, i32 0
  store i64 97, i64* %16, align 16
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i32 0, i32 1
  store i64 233, i64* %17, align 8
  %18 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %14, i32 0, i32 1
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i32 0, i32 0
  store i64 105, i64* %19, align 16
  %20 = getelementptr inbounds [2 x i64], [2 x i64]* %18, i32 0, i32 1
  store i64 213, i64* %20, align 8
  %21 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %14, i32 0, i32 2
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i32 0, i32 0
  store i64 115, i64* %22, align 16
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i32 0, i32 1
  store i64 153, i64* %23, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %25 = load i32, i32* @R2059_ALL, align 4
  %26 = or i32 %25, 81
  %27 = call i32 @b43_radio_write(%struct.b43_wldev* %24, i32 %26, i64 112)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %29 = load i32, i32* @R2059_ALL, align 4
  %30 = or i32 %29, 90
  %31 = call i32 @b43_radio_write(%struct.b43_wldev* %28, i32 %30, i64 3)
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %44, %1
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %35 = call i64 @ARRAY_SIZE(i64* %34)
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = or i64 %41, 326
  %43 = call i32 @b43_radio_set(%struct.b43_wldev* %38, i64 %42, i32 3)
  br label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %32

47:                                               ; preds = %32
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %49 = call i32 @b43_radio_set(%struct.b43_wldev* %48, i64 46, i32 120)
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 @b43_radio_set(%struct.b43_wldev* %50, i64 192, i32 128)
  %52 = call i32 @msleep(i32 2)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @b43_radio_mask(%struct.b43_wldev* %53, i64 46, i32 -121)
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %56 = call i32 @b43_radio_mask(%struct.b43_wldev* %55, i64 192, i32 -129)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = load i64, i64* @R2059_C3, align 8
  %59 = or i64 %58, 4
  %60 = call i32 @b43_radio_set(%struct.b43_wldev* %57, i64 %59, i32 1)
  %61 = call i32 @udelay(i32 10)
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %63 = load i64, i64* @R2059_C3, align 8
  %64 = or i64 %63, 191
  %65 = call i32 @b43_radio_set(%struct.b43_wldev* %62, i64 %64, i32 1)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %67 = load i64, i64* @R2059_C3, align 8
  %68 = or i64 %67, 411
  %69 = call i32 @b43_radio_maskset(%struct.b43_wldev* %66, i64 %68, i32 3, i32 2)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = load i64, i64* @R2059_C3, align 8
  %72 = or i64 %71, 4
  %73 = call i32 @b43_radio_set(%struct.b43_wldev* %70, i64 %72, i32 2)
  %74 = call i32 @udelay(i32 100)
  %75 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %76 = load i64, i64* @R2059_C3, align 8
  %77 = or i64 %76, 4
  %78 = call i32 @b43_radio_mask(%struct.b43_wldev* %75, i64 %77, i32 -3)
  store i64 0, i64* %5, align 8
  br label %79

79:                                               ; preds = %92, %47
  %80 = load i64, i64* %5, align 8
  %81 = icmp ult i64 %80, 10000
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %84 = load i64, i64* @R2059_C3, align 8
  %85 = or i64 %84, 325
  %86 = call i32 @b43_radio_read(%struct.b43_wldev* %83, i64 %85)
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i64 0, i64* %5, align 8
  br label %95

90:                                               ; preds = %82
  %91 = call i32 @udelay(i32 100)
  br label %92

92:                                               ; preds = %90
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %79

95:                                               ; preds = %89, %79
  %96 = load i64, i64* %5, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @b43err(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %95
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = load i64, i64* @R2059_C3, align 8
  %106 = or i64 %105, 4
  %107 = call i32 @b43_radio_mask(%struct.b43_wldev* %104, i64 %106, i32 -2)
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %109 = call i32 @b43_radio_set(%struct.b43_wldev* %108, i64 10, i32 96)
  store i64 0, i64* %5, align 8
  br label %110

110:                                              ; preds = %155, %103
  %111 = load i64, i64* %5, align 8
  %112 = icmp ult i64 %111, 3
  br i1 %112, label %113, label %158

113:                                              ; preds = %110
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %4, i64 0, i64 %115
  %117 = getelementptr inbounds [2 x i64], [2 x i64]* %116, i64 0, i64 0
  %118 = load i64, i64* %117, align 16
  %119 = call i32 @b43_radio_write(%struct.b43_wldev* %114, i32 383, i64 %118)
  %120 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %121 = call i32 @b43_radio_write(%struct.b43_wldev* %120, i32 317, i64 110)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds [3 x [2 x i64]], [3 x [2 x i64]]* %4, i64 0, i64 %123
  %125 = getelementptr inbounds [2 x i64], [2 x i64]* %124, i64 0, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @b43_radio_write(%struct.b43_wldev* %122, i32 318, i64 %126)
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %129 = call i32 @b43_radio_write(%struct.b43_wldev* %128, i32 316, i64 85)
  store i64 0, i64* %6, align 8
  br label %130

130:                                              ; preds = %141, %113
  %131 = load i64, i64* %6, align 8
  %132 = icmp ult i64 %131, 10000
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %135 = call i32 @b43_radio_read(%struct.b43_wldev* %134, i64 320)
  %136 = and i32 %135, 2
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i64 0, i64* %6, align 8
  br label %144

139:                                              ; preds = %133
  %140 = call i32 @udelay(i32 500)
  br label %141

141:                                              ; preds = %139
  %142 = load i64, i64* %6, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %6, align 8
  br label %130

144:                                              ; preds = %138, %130
  %145 = load i64, i64* %6, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %149 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @b43err(i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %147, %144
  %153 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %154 = call i32 @b43_radio_write(%struct.b43_wldev* %153, i32 316, i64 21)
  br label %155

155:                                              ; preds = %152
  %156 = load i64, i64* %5, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %5, align 8
  br label %110

158:                                              ; preds = %110
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %160 = call i32 @b43_radio_mask(%struct.b43_wldev* %159, i64 383, i32 -2)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %162 = call i32 @b43_radio_mask(%struct.b43_wldev* %161, i64 17, i32 -9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43_radio_write(%struct.b43_wldev*, i32, i64) #2

declare dso_local i64 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i64, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i64, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i64, i32, i32) #2

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i64) #2

declare dso_local i32 @b43err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
