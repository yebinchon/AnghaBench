; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.ifla_vxlan_port_range = type { i32, i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"invalid link address (not ethernet)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid all zero ethernet address\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFLA_VXLAN_ID = common dso_local global i64 0, align 8
@VXLAN_VID_MASK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@IFLA_VXLAN_PORT_RANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"port range %u .. %u not valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**)* @vxlan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_validate(%struct.nlattr** %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifla_vxlan_port_range*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %9 = load i64, i64* @IFLA_ADDRESS, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %15 = load i64, i64* @IFLA_ADDRESS, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = call i64 @nla_len(%struct.nlattr* %17)
  %19 = load i64, i64* @ETH_ALEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %13
  %26 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %27 = load i64, i64* @IFLA_ADDRESS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr* %29)
  %31 = call i32 @is_valid_ether_addr(%struct.ifla_vxlan_port_range* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EADDRNOTAVAIL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %98

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %40 = icmp ne %struct.nlattr** %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %98

44:                                               ; preds = %38
  %45 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %46 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp ne %struct.nlattr* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %52 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i64 @nla_get_u32(%struct.nlattr* %54)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @VXLAN_VID_MASK, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @ERANGE, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %98

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %65 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %71 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr* %73)
  store %struct.ifla_vxlan_port_range* %74, %struct.ifla_vxlan_port_range** %7, align 8
  %75 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %7, align 8
  %76 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohs(i32 %77)
  %79 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %7, align 8
  %80 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohs(i32 %81)
  %83 = icmp slt i64 %78, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %69
  %85 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %7, align 8
  %86 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ntohs(i32 %87)
  %89 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %7, align 8
  %90 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ntohs(i32 %91)
  %93 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %88, i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %69
  br label %97

97:                                               ; preds = %96, %63
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %84, %59, %41, %33, %21
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @is_valid_ether_addr(%struct.ifla_vxlan_port_range*) #1

declare dso_local %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
