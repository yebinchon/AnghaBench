; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_generate_domain_info_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_generate_domain_info_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_region_chan_11d = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.lbs_802_11d_domain_reg = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@COUNTRY_CODE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"nrchan %d\0A\00", align 1
@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"parsed_region_chan\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"nr_subband=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"domaininfo\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_region_chan_11d*, %struct.lbs_802_11d_domain_reg*)* @generate_domain_info_11d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_domain_info_11d(%struct.parsed_region_chan_11d* %0, %struct.lbs_802_11d_domain_reg* %1) #0 {
  %3 = alloca %struct.parsed_region_chan_11d*, align 8
  %4 = alloca %struct.lbs_802_11d_domain_reg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.parsed_region_chan_11d* %0, %struct.parsed_region_chan_11d** %3, align 8
  store %struct.lbs_802_11d_domain_reg* %1, %struct.lbs_802_11d_domain_reg** %4, align 8
  store i64 0, i64* %5, align 8
  %13 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %14 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %17 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %20 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @COUNTRY_CODE_LEN, align 4
  %23 = call i32 @memcpy(i32 %18, i32 %21, i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @LBS_DEB_11D, align 4
  %27 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %28 = bitcast %struct.parsed_region_chan_11d* %27 to i8*
  %29 = call i32 @lbs_deb_hex(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 24)
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %117, %2
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %120

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  store i64 1, i64* %12, align 8
  %38 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %39 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %46 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  store i64 1, i64* %7, align 8
  br label %117

52:                                               ; preds = %34
  %53 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %54 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %65 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %116

78:                                               ; preds = %63, %52
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %81 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i64 %79, i64* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %88 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i64 %86, i64* %92, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %95 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i64 %93, i64* %99, align 8
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  %102 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %103 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %8, align 8
  store i64 %108, i64* %9, align 8
  %109 = load %struct.parsed_region_chan_11d*, %struct.parsed_region_chan_11d** %3, align 8
  %110 = getelementptr inbounds %struct.parsed_region_chan_11d, %struct.parsed_region_chan_11d* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %78, %73
  br label %117

117:                                              ; preds = %116, %37
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %11, align 8
  br label %30

120:                                              ; preds = %30
  %121 = load i64, i64* %12, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %126 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i64 %124, i64* %130, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %133 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %132, i32 0, i32 1
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i64 %131, i64* %137, align 8
  %138 = load i64, i64* %10, align 8
  %139 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %140 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %139, i32 0, i32 1
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = load i64, i64* %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 2
  store i64 %138, i64* %144, align 8
  %145 = load i64, i64* %5, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %123, %120
  %148 = load i64, i64* %5, align 8
  %149 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %150 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %152 = getelementptr inbounds %struct.lbs_802_11d_domain_reg, %struct.lbs_802_11d_domain_reg* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %153)
  %155 = load i32, i32* @LBS_DEB_11D, align 4
  %156 = load %struct.lbs_802_11d_domain_reg*, %struct.lbs_802_11d_domain_reg** %4, align 8
  %157 = bitcast %struct.lbs_802_11d_domain_reg* %156 to i8*
  %158 = load i32, i32* @COUNTRY_CODE_LEN, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %5, align 8
  %162 = mul i64 4, %161
  %163 = add i64 %160, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @lbs_deb_hex(i32 %155, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %157, i32 %164)
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @lbs_deb_11d(i8*, i64) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
