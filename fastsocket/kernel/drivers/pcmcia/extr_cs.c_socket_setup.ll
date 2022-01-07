; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, {}*, %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"setup\0A\00", align 1
@SS_DETECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SS_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"voltage interrogation timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SS_CARDBUS = common dso_local global i32 0, align 4
@SS_CAP_CARDBUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"cardbus cards are not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SOCKET_CARDBUS = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unsupported voltage key.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HOOK_POWER_PRE = common dso_local global i32 0, align 4
@vcc_settle = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unable to apply power.\0A\00", align 1
@HOOK_POWER_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32)* @socket_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_setup(%struct.pcmcia_socket* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %9 = call i32 @cs_dbg(%struct.pcmcia_socket* %8, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %13, align 8
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %16 = call i32 %14(%struct.pcmcia_socket* %15, i32* %6)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SS_DETECT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %184

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 10
  %27 = call i32 @msleep(i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %54, %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %33 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %35, align 8
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %38 = call i32 %36(%struct.pcmcia_socket* %37, i32* %6)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SS_DETECT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %184

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @SS_PENDING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  %53 = call i32 @msleep(i32 100)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %28

57:                                               ; preds = %51, %28
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SS_PENDING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %64 = call i32 @cs_err(%struct.pcmcia_socket* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @ETIMEDOUT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %184

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @SS_CARDBUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %74 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SS_CAP_CARDBUS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %81 = call i32 @cs_err(%struct.pcmcia_socket* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %184

84:                                               ; preds = %72
  %85 = load i32, i32* @SOCKET_CARDBUS, align 4
  %86 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %87 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %67
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @SS_3VCARD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %97 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i32 33, i32* %98, align 4
  %99 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %100 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 33, i32* %101, align 8
  br label %120

102:                                              ; preds = %90
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @SS_XVCARD, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %109 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 50, i32* %110, align 4
  %111 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %112 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32 50, i32* %113, align 8
  br label %119

114:                                              ; preds = %102
  %115 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %116 = call i32 @cs_err(%struct.pcmcia_socket* %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %184

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %95
  %121 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %122 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %121, i32 0, i32 1
  %123 = bitcast {}** %122 to i32 (%struct.pcmcia_socket*, i32)**
  %124 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %123, align 8
  %125 = icmp ne i32 (%struct.pcmcia_socket*, i32)* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %128 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %127, i32 0, i32 1
  %129 = bitcast {}** %128 to i32 (%struct.pcmcia_socket*, i32)**
  %130 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %129, align 8
  %131 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %132 = load i32, i32* @HOOK_POWER_PRE, align 4
  %133 = call i32 %130(%struct.pcmcia_socket* %131, i32 %132)
  br label %134

134:                                              ; preds = %126, %120
  %135 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %136 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i64 0, i64* %137, align 8
  %138 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %139 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_4__*)** %141, align 8
  %143 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %144 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %145 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %144, i32 0, i32 3
  %146 = call i32 %142(%struct.pcmcia_socket* %143, %struct.TYPE_4__* %145)
  %147 = load i32, i32* @vcc_settle, align 4
  %148 = mul nsw i32 %147, 10
  %149 = call i32 @msleep(i32 %148)
  %150 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %151 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %150, i32 0, i32 2
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %153, align 8
  %155 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %156 = call i32 %154(%struct.pcmcia_socket* %155, i32* %6)
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @SS_POWERON, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %134
  %162 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %163 = call i32 @cs_err(%struct.pcmcia_socket* %162, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %184

166:                                              ; preds = %134
  %167 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %168 = call i32 @socket_reset(%struct.pcmcia_socket* %167)
  store i32 %168, i32* %6, align 4
  %169 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %170 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %169, i32 0, i32 1
  %171 = bitcast {}** %170 to i32 (%struct.pcmcia_socket*, i32)**
  %172 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %171, align 8
  %173 = icmp ne i32 (%struct.pcmcia_socket*, i32)* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %166
  %175 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %176 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %175, i32 0, i32 1
  %177 = bitcast {}** %176 to i32 (%struct.pcmcia_socket*, i32)**
  %178 = load i32 (%struct.pcmcia_socket*, i32)*, i32 (%struct.pcmcia_socket*, i32)** %177, align 8
  %179 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %180 = load i32, i32* @HOOK_POWER_POST, align 4
  %181 = call i32 %178(%struct.pcmcia_socket* %179, i32 %180)
  br label %182

182:                                              ; preds = %174, %166
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %161, %114, %79, %62, %43, %21
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cs_err(%struct.pcmcia_socket*, i8*) #1

declare dso_local i32 @socket_reset(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
