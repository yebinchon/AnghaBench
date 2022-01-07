; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_if_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_set_if_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.anon = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"IFADDR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@SIOCGIFADDR = common dso_local global i32 0, align 4
@SIOCSIFADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"DSTADDR\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"destination addr\00", align 1
@SIOCGIFDSTADDR = common dso_local global i32 0, align 4
@SIOCSIFDSTADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"BRDADDR\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"broadcast addr\00", align 1
@SIOCGIFBRDADDR = common dso_local global i32 0, align 4
@SIOCSIFBRDADDR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"NETMASK\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"netmask\00", align 1
@SIOCGIFNETMASK = common dso_local global i32 0, align 4
@SIOCSIFNETMASK = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"Interface '%s': Error: SIOCG%s failed: %s\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"Interface '%s': Error: SIOCS%s failed: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Interface '%s': set IP %s to %d.%d.%d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @set_if_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_if_addr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifreq, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x %struct.anon], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 2
  %16 = load i32, i32* @SIOCGIFADDR, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 3
  %18 = load i32, i32* @SIOCSIFADDR, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %12, i64 1
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 2
  %23 = load i32, i32* @SIOCGIFDSTADDR, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 3
  %25 = load i32, i32* @SIOCSIFDSTADDR, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %19, i64 1
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 2
  %30 = load i32, i32* @SIOCGIFBRDADDR, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 3
  %32 = load i32, i32* @SIOCSIFBRDADDR, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %26, i64 1
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 2
  %37 = load i32, i32* @SIOCGIFNETMASK, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 3
  %39 = load i32, i32* @SIOCSIFNETMASK, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %33, i64 1
  %41 = bitcast %struct.anon* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %137, %2
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %140

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @IFNAMSIZ, align 4
  %54 = call i32 @strncpy(i32 %51, i8* %52, i32 %53)
  %55 = load i32, i32* @skfd, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ioctl(i32 %55, i32 %60, %struct.ifreq* %5)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %49
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @strerror(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = call i32 (i8*, i8*, i8*, i8, ...) @v_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %66, i8* %71, i8 zeroext %74)
  %76 = load i32, i32* @AF_INET, align 4
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @memset(i64 %81, i32 0, i32 8)
  br label %83

83:                                               ; preds = %64, %49
  %84 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* @IFNAMSIZ, align 4
  %88 = call i32 @strncpy(i32 %85, i8* %86, i32 %87)
  %89 = load i32, i32* @skfd, align 4
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ioctl(i32 %89, i32 %94, %struct.ifreq* %5)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %83
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.anon, %struct.anon* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @strerror(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = call i32 (i8*, i8*, i8*, i8, ...) @v_print(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %100, i8* %105, i8 zeroext %108)
  br label %110

110:                                              ; preds = %98, %83
  %111 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %7, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [5 x %struct.anon], [5 x %struct.anon]* %9, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.anon, %struct.anon* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = call i32 (i8*, i8*, i8*, i8, ...) @v_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %115, i8* %120, i8 zeroext %123, i32 %127, i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %110
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %42

140:                                              ; preds = %42
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #2

declare dso_local i32 @v_print(i8*, i8*, i8*, i8 zeroext, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @memset(i64, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
