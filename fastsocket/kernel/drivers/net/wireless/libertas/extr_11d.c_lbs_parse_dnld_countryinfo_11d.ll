; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_parse_dnld_countryinfo_11d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_parse_dnld_countryinfo_11d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i64 }
%struct.bss_descriptor = type { i32 }

@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error parsing domain_info from AP\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error setting domain info\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_parse_dnld_countryinfo_11d(%struct.lbs_private* %0, %struct.bss_descriptor* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.bss_descriptor*, align 8
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.bss_descriptor* %1, %struct.bss_descriptor** %4, align 8
  %6 = load i32, i32* @LBS_DEB_11D, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 1
  %15 = call i32 @memset(i32* %14, i32 0, i32 4)
  %16 = load %struct.bss_descriptor*, %struct.bss_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.bss_descriptor, %struct.bss_descriptor* %16, i32 0, i32 0
  %18 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 1
  %20 = call i32 @parse_domain_info_11d(i32* %17, i32 0, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %42

25:                                               ; preds = %12
  %26 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %27 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %26, i32 0, i32 0
  %28 = call i32 @memset(i32* %27, i32 0, i32 4)
  %29 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 1
  %31 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %32 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %31, i32 0, i32 0
  %33 = call i32 @generate_domain_info_11d(i32* %30, i32* %32)
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = call i32 @set_domain_info_11d(%struct.lbs_private* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = call i32 @lbs_deb_11d(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %42

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %2
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38, %23
  %43 = load i32, i32* @LBS_DEB_11D, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @lbs_deb_leave_args(i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @parse_domain_info_11d(i32*, i32, i32*) #1

declare dso_local i32 @lbs_deb_11d(i8*) #1

declare dso_local i32 @generate_domain_info_11d(i32*, i32*) #1

declare dso_local i32 @set_domain_info_11d(%struct.lbs_private*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
