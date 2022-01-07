; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_enslave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_enslave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@slave_flags = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@IFF_SLAVE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Illegal operation: The specified slave interface '%s' is already a slave\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Slave '%s': Error: bring interface down failed\0A\00", align 1
@abi_ver = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Slave '%s': Error: clear address failed\0A\00", align 1
@master_mtu = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@slave_mtu = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Slave '%s': Error: set MTU failed\0A\00", align 1
@hwaddr_set = common dso_local global i32 0, align 4
@master_hwaddr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Slave '%s': Error: set hw address failed\0A\00", align 1
@master_flags = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"Master '%s': Error: bring interface down failed\0A\00", align 1
@slave_hwaddr = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Master '%s': Error: set hw address failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Master '%s': Error: bring interface up failed\0A\00", align 1
@IFNAMSIZ = common dso_local global i32 0, align 4
@skfd = common dso_local global i32 0, align 4
@SIOCBONDENSLAVE = common dso_local global i32 0, align 4
@BOND_ENSLAVE_OLD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@saved_errno = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [48 x i8] c"Master '%s': Error: SIOCBONDENSLAVE failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @enslave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enslave(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifreq, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @slave_flags, i32 0, i32 0), align 4
  %9 = load i32, i32* @IFF_SLAVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 1, i32* %3, align 4
  br label %168

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @slave_flags, i32 0, i32 0), align 4
  %19 = call i32 @set_if_down(i8* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %168

27:                                               ; preds = %16
  %28 = load i32, i32* @abi_ver, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @set_if_addr(i8* %31, i8* %32)
  br label %45

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @clear_if_addr(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %168

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @master_mtu, i32 0, i32 0), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @slave_mtu, i32 0, i32 0), align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @master_mtu, i32 0, i32 0), align 8
  %52 = call i32 @set_slave_mtu(i8* %50, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %168

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %45
  %62 = load i32, i32* @hwaddr_set, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load i32, i32* @abi_ver, align 4
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @set_slave_hwaddr(i8* %68, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @master_hwaddr, i32 0, i32 0))
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  br label %163

76:                                               ; preds = %67
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @slave_flags, i32 0, i32 0), align 4
  %79 = call i32 @set_if_up(i8* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @fprintf(i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %160

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %64
  br label %126

88:                                               ; preds = %61
  %89 = load i32, i32* @abi_ver, align 4
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @master_flags, i32 0, i32 0), align 4
  %94 = call i32 @set_if_down(i8* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @stderr, align 4
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  br label %163

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 @set_master_hwaddr(i8* %103, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slave_hwaddr, i32 0, i32 0))
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  br label %163

111:                                              ; preds = %102
  %112 = load i32, i32* @abi_ver, align 4
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @master_flags, i32 0, i32 0), align 4
  %117 = call i32 @set_if_up(i8* %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load i32, i32* @stderr, align 4
  %122 = load i8*, i8** %4, align 8
  %123 = call i32 @fprintf(i32 %121, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %122)
  br label %157

124:                                              ; preds = %114
  br label %125

125:                                              ; preds = %124, %111
  store i32 1, i32* @hwaddr_set, align 4
  br label %126

126:                                              ; preds = %125, %87
  %127 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %4, align 8
  %130 = load i32, i32* @IFNAMSIZ, align 4
  %131 = call i32 @strncpy(i32 %128, i8* %129, i32 %130)
  %132 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %6, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = load i32, i32* @IFNAMSIZ, align 4
  %136 = call i32 @strncpy(i32 %133, i8* %134, i32 %135)
  %137 = load i32, i32* @skfd, align 4
  %138 = load i32, i32* @SIOCBONDENSLAVE, align 4
  %139 = call i64 @ioctl(i32 %137, i32 %138, %struct.ifreq* %6)
  %140 = icmp slt i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %126
  %142 = load i32, i32* @skfd, align 4
  %143 = load i32, i32* @BOND_ENSLAVE_OLD, align 4
  %144 = call i64 @ioctl(i32 %142, i32 %143, %struct.ifreq* %6)
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* @errno, align 4
  store i32 %147, i32* @saved_errno, align 4
  %148 = load i8*, i8** %4, align 8
  %149 = load i32, i32* @saved_errno, align 4
  %150 = call i32 @strerror(i32 %149)
  %151 = call i32 @v_print(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* %148, i32 %150)
  store i32 1, i32* %7, align 4
  br label %152

152:                                              ; preds = %146, %141, %126
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %157

156:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %168

157:                                              ; preds = %155, %120
  %158 = load i8*, i8** %4, align 8
  %159 = call i32 @set_master_hwaddr(i8* %158, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @master_hwaddr, i32 0, i32 0))
  store i32 0, i32* @hwaddr_set, align 4
  br label %163

160:                                              ; preds = %82
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @set_slave_hwaddr(i8* %161, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @slave_hwaddr, i32 0, i32 0))
  br label %163

163:                                              ; preds = %160, %157, %107, %97, %72
  %164 = load i8*, i8** %5, align 8
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @slave_mtu, i32 0, i32 0), align 8
  %166 = call i32 @set_slave_mtu(i8* %164, i64 %165)
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %163, %156, %55, %39, %22, %12
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @set_if_down(i8*, i32) #1

declare dso_local i32 @set_if_addr(i8*, i8*) #1

declare dso_local i32 @clear_if_addr(i8*) #1

declare dso_local i32 @set_slave_mtu(i8*, i64) #1

declare dso_local i32 @set_slave_hwaddr(i8*, i32*) #1

declare dso_local i32 @set_if_up(i8*, i32) #1

declare dso_local i32 @set_master_hwaddr(i8*, i32*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @v_print(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
