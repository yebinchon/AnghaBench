; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_if_getconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_if_getconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifreq = type { i32, i32, i32, %struct.sockaddr, i32, %struct.sockaddr, %struct.sockaddr, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.sockaddr = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32* }

@skfd = common dso_local global i32 0, align 4
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@mif_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"The result of SIOCGIFFLAGS on %s is %x.\0A\00", align 1
@SIOCGIFADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"The result of SIOCGIFADDR is %2.2x.%2.2x.%2.2x.%2.2x.\0A\00", align 1
@SIOCGIFHWADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"The result of SIOCGIFHWADDR is type %d  %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x.\0A\00", align 1
@SIOCGIFMETRIC = common dso_local global i32 0, align 4
@SIOCGIFMTU = common dso_local global i32 0, align 4
@SIOCGIFDSTADDR = common dso_local global i32 0, align 4
@SIOCGIFBRDADDR = common dso_local global i32 0, align 4
@SIOCGIFNETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @if_getconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_getconfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifreq, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr, align 4
  %8 = alloca %struct.sockaddr, align 4
  %9 = alloca %struct.sockaddr, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcpy(i32 %12, i8* %13)
  %15 = load i32, i32* @skfd, align 4
  %16 = load i32, i32* @SIOCGIFFLAGS, align 4
  %17 = call i64 @ioctl(i32 %15, i32 %16, %struct.ifreq* %4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %171

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @mif_flags, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25)
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcpy(i32 %28, i8* %29)
  %31 = load i32, i32* @skfd, align 4
  %32 = load i32, i32* @SIOCGIFADDR, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.ifreq* %4)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 -1, i32* %2, align 4
  br label %171

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %46, i32 %51, i32 %56)
  %58 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @strcpy(i32 %59, i8* %60)
  %62 = load i32, i32* @skfd, align 4
  %63 = load i32, i32* @SIOCGIFHWADDR, align 4
  %64 = call i64 @ioctl(i32 %62, i32 %63, %struct.ifreq* %4)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %171

67:                                               ; preds = %36
  %68 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %10, align 8
  %72 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 4
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 5
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %78, i32 %82, i32 %86, i32 %90, i32 %94, i32 %98)
  %100 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 @strcpy(i32 %101, i8* %102)
  %104 = load i32, i32* @skfd, align 4
  %105 = load i32, i32* @SIOCGIFMETRIC, align 4
  %106 = call i64 @ioctl(i32 %104, i32 %105, %struct.ifreq* %4)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %67
  store i32 0, i32* %5, align 4
  br label %112

109:                                              ; preds = %67
  %110 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %108
  %113 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %3, align 8
  %116 = call i32 @strcpy(i32 %114, i8* %115)
  %117 = load i32, i32* @skfd, align 4
  %118 = load i32, i32* @SIOCGIFMTU, align 4
  %119 = call i64 @ioctl(i32 %117, i32 %118, %struct.ifreq* %4)
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 0, i32* %6, align 4
  br label %125

122:                                              ; preds = %112
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %121
  %126 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 @strcpy(i32 %127, i8* %128)
  %130 = load i32, i32* @skfd, align 4
  %131 = load i32, i32* @SIOCGIFDSTADDR, align 4
  %132 = call i64 @ioctl(i32 %130, i32 %131, %struct.ifreq* %4)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = call i32 @memset(%struct.sockaddr* %7, i32 0, i32 4)
  br label %140

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 6
  %138 = bitcast %struct.sockaddr* %7 to i8*
  %139 = bitcast %struct.sockaddr* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 8 %139, i64 4, i1 false)
  br label %140

140:                                              ; preds = %136, %134
  %141 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @strcpy(i32 %142, i8* %143)
  %145 = load i32, i32* @skfd, align 4
  %146 = load i32, i32* @SIOCGIFBRDADDR, align 4
  %147 = call i64 @ioctl(i32 %145, i32 %146, %struct.ifreq* %4)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = call i32 @memset(%struct.sockaddr* %8, i32 0, i32 4)
  br label %155

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 5
  %153 = bitcast %struct.sockaddr* %8 to i8*
  %154 = bitcast %struct.sockaddr* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %153, i8* align 4 %154, i64 4, i1 false)
  br label %155

155:                                              ; preds = %151, %149
  %156 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %3, align 8
  %159 = call i32 @strcpy(i32 %157, i8* %158)
  %160 = load i32, i32* @skfd, align 4
  %161 = load i32, i32* @SIOCGIFNETMASK, align 4
  %162 = call i64 @ioctl(i32 %160, i32 %161, %struct.ifreq* %4)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %155
  %165 = call i32 @memset(%struct.sockaddr* %9, i32 0, i32 4)
  br label %170

166:                                              ; preds = %155
  %167 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 3
  %168 = bitcast %struct.sockaddr* %9 to i8*
  %169 = bitcast %struct.sockaddr* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 4, i1 false)
  br label %170

170:                                              ; preds = %166, %164
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %66, %35, %19
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
