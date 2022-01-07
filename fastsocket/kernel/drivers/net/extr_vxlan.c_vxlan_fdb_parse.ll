; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@NDA_DST = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@NDA_PORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NDA_VNI = common dso_local global i64 0, align 8
@NDA_IFINDEX = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.vxlan_dev*, i32*, i32*, i32*, i32*)* @vxlan_fdb_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_parse(%struct.nlattr** %0, %struct.vxlan_dev* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.vxlan_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca %struct.net_device*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %8, align 8
  store %struct.vxlan_dev* %1, %struct.vxlan_dev** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %17 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @dev_net(i32 %18)
  store %struct.net* %19, %struct.net** %14, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %21 = load i64, i64* @NDA_DST, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %6
  %26 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %27 = load i64, i64* @NDA_DST, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_len(%struct.nlattr* %29)
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EAFNOSUPPORT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %145

36:                                               ; preds = %25
  %37 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %38 = load i64, i64* @NDA_DST, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_be32(%struct.nlattr* %40)
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %47

43:                                               ; preds = %6
  %44 = load i32, i32* @INADDR_ANY, align 4
  %45 = call i32 @htonl(i32 %44)
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %49 = load i64, i64* @NDA_PORT, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %71

53:                                               ; preds = %47
  %54 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %55 = load i64, i64* @NDA_PORT, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_len(%struct.nlattr* %57)
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %145

64:                                               ; preds = %53
  %65 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %66 = load i64, i64* @NDA_PORT, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_get_be16(%struct.nlattr* %68)
  %70 = load i32*, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %76

71:                                               ; preds = %47
  %72 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %73 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %64
  %77 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %78 = load i64, i64* @NDA_VNI, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %84 = load i64, i64* @NDA_VNI, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @nla_len(%struct.nlattr* %86)
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 %88, 4
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %7, align 4
  br label %145

93:                                               ; preds = %82
  %94 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %95 = load i64, i64* @NDA_VNI, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @nla_get_u32(%struct.nlattr* %97)
  %99 = load i32*, i32** %12, align 8
  store i32 %98, i32* %99, align 4
  br label %106

100:                                              ; preds = %76
  %101 = load %struct.vxlan_dev*, %struct.vxlan_dev** %9, align 8
  %102 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %12, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %108 = load i64, i64* @NDA_IFINDEX, align 8
  %109 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %107, i64 %108
  %110 = load %struct.nlattr*, %struct.nlattr** %109, align 8
  %111 = icmp ne %struct.nlattr* %110, null
  br i1 %111, label %112, label %142

112:                                              ; preds = %106
  %113 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %114 = load i64, i64* @NDA_IFINDEX, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %113, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = call i32 @nla_len(%struct.nlattr* %116)
  %118 = sext i32 %117 to i64
  %119 = icmp ne i64 %118, 4
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %7, align 4
  br label %145

123:                                              ; preds = %112
  %124 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %125 = load i64, i64* @NDA_IFINDEX, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = call i32 @nla_get_u32(%struct.nlattr* %127)
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  %130 = load %struct.net*, %struct.net** %14, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.net_device* @dev_get_by_index(%struct.net* %130, i32 %132)
  store %struct.net_device* %133, %struct.net_device** %15, align 8
  %134 = load %struct.net_device*, %struct.net_device** %15, align 8
  %135 = icmp ne %struct.net_device* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %123
  %137 = load i32, i32* @EADDRNOTAVAIL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %7, align 4
  br label %145

139:                                              ; preds = %123
  %140 = load %struct.net_device*, %struct.net_device** %15, align 8
  %141 = call i32 @dev_put(%struct.net_device* %140)
  br label %144

142:                                              ; preds = %106
  %143 = load i32*, i32** %13, align 8
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %142, %139
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %144, %136, %120, %90, %61, %33
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
