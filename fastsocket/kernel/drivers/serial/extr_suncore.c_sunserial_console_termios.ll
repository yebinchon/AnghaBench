; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_suncore.c_sunserial_console_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_suncore.c_sunserial_console_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console = type { i32 }
%struct.device_node = type { i32 }

@__const.sunserial_console_termios.mode_prop = private unnamed_addr constant [10 x i8] c"ttyX-mode\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"rsc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rsc-console\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rsc-control\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ssp-console-modes\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"115200,8,n,1,-\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"lom-console\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"9600,8,n,1,-\00", align 1
@of_console_options = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@B150 = common dso_local global i32 0, align 4
@B300 = common dso_local global i32 0, align 4
@B600 = common dso_local global i32 0, align 4
@B1200 = common dso_local global i32 0, align 4
@B2400 = common dso_local global i32 0, align 4
@B4800 = common dso_local global i32 0, align 4
@B9600 = common dso_local global i32 0, align 4
@B19200 = common dso_local global i32 0, align 4
@B38400 = common dso_local global i32 0, align 4
@B57600 = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@B230400 = common dso_local global i32 0, align 4
@B460800 = common dso_local global i32 0, align 4
@CS5 = common dso_local global i32 0, align 4
@CS6 = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunserial_console_termios(%struct.console* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.console*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca i8, align 1
  store %struct.console* %0, %struct.console** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %15 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.sunserial_console_termios.mode_prop, i32 0, i32 0), i64 10, i1 false)
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = getelementptr inbounds %struct.device_node, %struct.device_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcmp(i32 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = getelementptr inbounds %struct.device_node, %struct.device_node* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27, %21, %2
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = call i8* @of_get_property(%struct.device_node* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %35, i8** %5, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %39

39:                                               ; preds = %38, %33
  br label %65

40:                                               ; preds = %27
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = getelementptr inbounds %struct.device_node, %struct.device_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcmp(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %64

47:                                               ; preds = %40
  store i8 97, i8* %14, align 1
  %48 = load i8*, i8** @of_console_options, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** @of_console_options, align 8
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %14, align 1
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8, i8* %14, align 1
  %55 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 %54, i8* %55, align 1
  %56 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store %struct.device_node* %56, %struct.device_node** %13, align 8
  %57 = load %struct.device_node*, %struct.device_node** %13, align 8
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %59 = call i8* @of_get_property(%struct.device_node* %57, i8* %58, i32* null)
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i32, i32* @CREAD, align 4
  %67 = load i32, i32* @HUPCL, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @CLOCAL, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %6, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @simple_strtoul(i8* %72, i32* null, i32 0)
  store i32 %73, i32* %8, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 44)
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  %78 = call i32 @simple_strtoul(i8* %77, i32* null, i32 0)
  store i32 %78, i32* %9, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 44)
  store i8* %80, i8** %6, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  %83 = load i8, i8* %82, align 1
  store i8 %83, i8* %12, align 1
  %84 = load i8*, i8** %6, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 44)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  %88 = call i32 @simple_strtoul(i8* %87, i32* null, i32 0)
  store i32 %88, i32* %10, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @strchr(i8* %89, i8 signext 44)
  store i8* %90, i8** %6, align 8
  %91 = load i32, i32* %8, align 4
  switch i32 %91, label %144 [
    i32 150, label %92
    i32 300, label %96
    i32 600, label %100
    i32 1200, label %104
    i32 2400, label %108
    i32 4800, label %112
    i32 9600, label %116
    i32 19200, label %120
    i32 38400, label %124
    i32 57600, label %128
    i32 115200, label %132
    i32 230400, label %136
    i32 460800, label %140
  ]

92:                                               ; preds = %65
  %93 = load i32, i32* @B150, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %148

96:                                               ; preds = %65
  %97 = load i32, i32* @B300, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %148

100:                                              ; preds = %65
  %101 = load i32, i32* @B600, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %148

104:                                              ; preds = %65
  %105 = load i32, i32* @B1200, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %148

108:                                              ; preds = %65
  %109 = load i32, i32* @B2400, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %148

112:                                              ; preds = %65
  %113 = load i32, i32* @B4800, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %148

116:                                              ; preds = %65
  %117 = load i32, i32* @B9600, align 4
  %118 = load i32, i32* %11, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %11, align 4
  br label %148

120:                                              ; preds = %65
  %121 = load i32, i32* @B19200, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %148

124:                                              ; preds = %65
  %125 = load i32, i32* @B38400, align 4
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %148

128:                                              ; preds = %65
  %129 = load i32, i32* @B57600, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %148

132:                                              ; preds = %65
  %133 = load i32, i32* @B115200, align 4
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %148

136:                                              ; preds = %65
  %137 = load i32, i32* @B230400, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %148

140:                                              ; preds = %65
  %141 = load i32, i32* @B460800, align 4
  %142 = load i32, i32* %11, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %11, align 4
  br label %148

144:                                              ; preds = %65
  store i32 9600, i32* %8, align 4
  %145 = load i32, i32* @B9600, align 4
  %146 = load i32, i32* %11, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %144, %140, %136, %132, %128, %124, %120, %116, %112, %108, %104, %100, %96, %92
  %149 = load i32, i32* %9, align 4
  switch i32 %149, label %166 [
    i32 5, label %150
    i32 6, label %154
    i32 7, label %158
    i32 8, label %162
  ]

150:                                              ; preds = %148
  %151 = load i32, i32* @CS5, align 4
  %152 = load i32, i32* %11, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %11, align 4
  br label %170

154:                                              ; preds = %148
  %155 = load i32, i32* @CS6, align 4
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %170

158:                                              ; preds = %148
  %159 = load i32, i32* @CS7, align 4
  %160 = load i32, i32* %11, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %11, align 4
  br label %170

162:                                              ; preds = %148
  %163 = load i32, i32* @CS8, align 4
  %164 = load i32, i32* %11, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %11, align 4
  br label %170

166:                                              ; preds = %148
  %167 = load i32, i32* @CS8, align 4
  %168 = load i32, i32* %11, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %11, align 4
  br label %170

170:                                              ; preds = %166, %162, %158, %154, %150
  %171 = load i8, i8* %12, align 1
  %172 = sext i8 %171 to i32
  switch i32 %172, label %184 [
    i32 111, label %173
    i32 101, label %179
    i32 110, label %183
  ]

173:                                              ; preds = %170
  %174 = load i32, i32* @PARENB, align 4
  %175 = load i32, i32* @PARODD, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %11, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %11, align 4
  br label %185

179:                                              ; preds = %170
  %180 = load i32, i32* @PARENB, align 4
  %181 = load i32, i32* %11, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %11, align 4
  br label %185

183:                                              ; preds = %170
  br label %184

184:                                              ; preds = %170, %183
  br label %185

185:                                              ; preds = %184, %179, %173
  %186 = load i32, i32* %10, align 4
  switch i32 %186, label %192 [
    i32 2, label %187
    i32 1, label %191
  ]

187:                                              ; preds = %185
  %188 = load i32, i32* @CSTOPB, align 4
  %189 = load i32, i32* %11, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %11, align 4
  br label %193

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %185, %191
  br label %193

193:                                              ; preds = %192, %187
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.console*, %struct.console** %3, align 8
  %196 = getelementptr inbounds %struct.console, %struct.console* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #2

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #2

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
