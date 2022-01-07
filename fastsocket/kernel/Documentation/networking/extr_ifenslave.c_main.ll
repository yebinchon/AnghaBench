; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/networking/extr_ifenslave.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"acdfhuvV\00", align 1
@longopts = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@opt_a = common dso_local global i64 0, align 8
@opt_c = common dso_local global i64 0, align 8
@opt_d = common dso_local global i64 0, align 8
@opt_f = common dso_local global i32 0, align 4
@opt_h = common dso_local global i64 0, align 8
@opt_u = common dso_local global i64 0, align 8
@opt_v = common dso_local global i64 0, align 8
@opt_V = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@usage_msg = common dso_local global i8* null, align 8
@version = common dso_local global i8* null, align 8
@help_msg = common dso_local global i8* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@skfd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Master '%s': Error: handshake with driver failed. Aborting\0A\00", align 1
@master_ifra = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Master '%s': Error: get settings failed: %s. Aborting\0A\00", align 1
@master_flags = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@IFF_MASTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [75 x i8] c"Illegal operation; the specified interface '%s' is not a master. Aborting\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [67 x i8] c"Illegal operation; the specified master interface '%s' is not up.\0A\00", align 1
@master_hwaddr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [196 x i8] c"Illegal operation: The specified master interface '%s' is not ethernet-like.\0A This program is designed to work with ethernet-like network interfaces.\0A Use the '-f' option to force the operation.\0A\00", align 1
@hwaddr_set = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [89 x i8] c"current hardware address of master '%s' is %2.2x:%2.2x:%2.2x:%2.2x:%2.2x:%2.2x, type %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Slave '%s': Error: get flags failed. Aborting\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Master '%s', Slave '%s': Error: Change active failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Slave '%s': Error: get flags failed. Skipping\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Master '%s', Slave '%s': Error: Release failed\0A\00", align 1
@slave_ifra = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [54 x i8] c"Slave '%s': Error: get settings failed: %s. Skipping\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Master '%s', Slave '%s': Error: Enslave failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %67, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* @longopts, align 4
  %20 = call i32 @getopt_long(i32 %17, i8** %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, i32 0)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %67 [
    i32 97, label %25
    i32 99, label %30
    i32 100, label %35
    i32 102, label %40
    i32 104, label %45
    i32 117, label %50
    i32 118, label %55
    i32 86, label %58
    i32 63, label %63
  ]

25:                                               ; preds = %23
  %26 = load i64, i64* @opt_a, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @opt_a, align 8
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %13, align 4
  br label %67

30:                                               ; preds = %23
  %31 = load i64, i64* @opt_c, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @opt_c, align 8
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %13, align 4
  br label %67

35:                                               ; preds = %23
  %36 = load i64, i64* @opt_d, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @opt_d, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %13, align 4
  br label %67

40:                                               ; preds = %23
  %41 = load i32, i32* @opt_f, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @opt_f, align 4
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %67

45:                                               ; preds = %23
  %46 = load i64, i64* @opt_h, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @opt_h, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %67

50:                                               ; preds = %23
  %51 = load i64, i64* @opt_u, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* @opt_u, align 8
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %67

55:                                               ; preds = %23
  %56 = load i64, i64* @opt_v, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* @opt_v, align 8
  br label %67

58:                                               ; preds = %23
  %59 = load i64, i64* @opt_V, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* @opt_V, align 8
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %13, align 4
  br label %67

63:                                               ; preds = %23
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** @usage_msg, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* %65)
  store i32 2, i32* %12, align 4
  br label %341

67:                                               ; preds = %23, %58, %55, %50, %45, %40, %35, %30, %25
  br label %16

68:                                               ; preds = %16
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @stderr, align 4
  %73 = load i8*, i8** @usage_msg, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* %73)
  store i32 2, i32* %12, align 4
  br label %341

75:                                               ; preds = %68
  %76 = load i64, i64* @opt_v, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* @opt_V, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** @version, align 8
  %83 = call i32 @printf(i8* %82)
  %84 = load i64, i64* @opt_V, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %341

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %78
  %89 = load i64, i64* @opt_u, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i8*, i8** @usage_msg, align 8
  %93 = call i32 @printf(i8* %92)
  store i32 0, i32* %12, align 4
  br label %341

94:                                               ; preds = %88
  %95 = load i64, i64* @opt_h, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i8*, i8** @usage_msg, align 8
  %99 = call i32 @printf(i8* %98)
  %100 = load i8*, i8** @help_msg, align 8
  %101 = call i32 @printf(i8* %100)
  store i32 0, i32* %12, align 4
  br label %341

102:                                              ; preds = %94
  %103 = load i32, i32* @AF_INET, align 4
  %104 = load i32, i32* @SOCK_DGRAM, align 4
  %105 = call i64 @socket(i32 %103, i32 %104, i32 0)
  store i64 %105, i64* @skfd, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %341

109:                                              ; preds = %102
  %110 = load i64, i64* @opt_a, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* @optind, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = call i32 @if_print(i8* null)
  br label %341

118:                                              ; preds = %112
  %119 = load i32, i32* @stderr, align 4
  %120 = load i8*, i8** @usage_msg, align 8
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* %120)
  store i32 2, i32* %12, align 4
  br label %341

122:                                              ; preds = %109
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* @optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8** %126, i8*** %6, align 8
  %127 = load i8**, i8*** %6, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** %6, align 8
  %129 = load i8*, i8** %127, align 8
  store i8* %129, i8** %7, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %122
  %133 = load i32, i32* @stderr, align 4
  %134 = load i8*, i8** @usage_msg, align 8
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* %134)
  store i32 2, i32* %12, align 4
  br label %341

136:                                              ; preds = %122
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @get_drv_info(i8* %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load i32, i32* @stderr, align 4
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %143)
  br label %341

145:                                              ; preds = %136
  %146 = load i8**, i8*** %6, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i32 1
  store i8** %147, i8*** %6, align 8
  %148 = load i8*, i8** %146, align 8
  store i8* %148, i8** %8, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = load i64, i64* @opt_d, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* @opt_c, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154, %151
  %158 = load i32, i32* @stderr, align 4
  %159 = load i8*, i8** @usage_msg, align 8
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* %159)
  store i32 2, i32* %12, align 4
  br label %341

161:                                              ; preds = %154
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @if_print(i8* %162)
  br label %341

164:                                              ; preds = %145
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* @master_ifra, align 4
  %167 = call i32 @get_if_settings(i8* %165, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = load i32, i32* @stderr, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i8* @strerror(i32 %173)
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %172, i8* %174)
  br label %341

176:                                              ; preds = %164
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @master_flags, i32 0, i32 0), align 4
  %178 = load i32, i32* @IFF_MASTER, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @stderr, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i8* %183)
  store i32 1, i32* %12, align 4
  br label %341

185:                                              ; preds = %176
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @master_flags, i32 0, i32 0), align 4
  %187 = load i32, i32* @IFF_UP, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* @stderr, align 4
  %192 = load i8*, i8** %7, align 8
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i8* %192)
  store i32 1, i32* %12, align 4
  br label %341

194:                                              ; preds = %185
  %195 = load i64, i64* @opt_c, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %256, label %197

197:                                              ; preds = %194
  %198 = load i64, i64* @opt_d, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %256, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @master_hwaddr, i32 0, i32 0, i32 0), align 8
  store i32 %201, i32* %14, align 4
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @master_hwaddr, i32 0, i32 0, i32 1), align 8
  %203 = inttoptr i64 %202 to i8*
  store i8* %203, i8** %15, align 8
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 1
  br i1 %205, label %206, label %213

206:                                              ; preds = %200
  %207 = load i32, i32* @opt_f, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* @stderr, align 4
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.6, i64 0, i64 0), i8* %211)
  store i32 1, i32* %12, align 4
  br label %341

213:                                              ; preds = %206, %200
  store i32 0, i32* %10, align 4
  br label %214

214:                                              ; preds = %227, %213
  %215 = load i32, i32* %10, align 4
  %216 = icmp slt i32 %215, 6
  br i1 %216, label %217, label %230

217:                                              ; preds = %214
  %218 = load i8*, i8** %15, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %218, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  store i32 1, i32* @hwaddr_set, align 4
  br label %230

226:                                              ; preds = %217
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %214

230:                                              ; preds = %225, %214
  %231 = load i32, i32* @hwaddr_set, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load i8*, i8** %7, align 8
  %235 = load i8*, i8** %15, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 0
  %237 = load i8, i8* %236, align 1
  %238 = load i8*, i8** %15, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 1
  %240 = load i8, i8* %239, align 1
  %241 = load i8*, i8** %15, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 2
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %15, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 3
  %246 = load i8, i8* %245, align 1
  %247 = load i8*, i8** %15, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  %249 = load i8, i8* %248, align 1
  %250 = load i8*, i8** %15, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 5
  %252 = load i8, i8* %251, align 1
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @v_print(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0), i8* %234, i8 zeroext %237, i8 zeroext %240, i8 zeroext %243, i8 zeroext %246, i8 zeroext %249, i8 zeroext %252, i32 %253)
  br label %255

255:                                              ; preds = %233, %230
  br label %256

256:                                              ; preds = %255, %197, %194
  %257 = load i64, i64* @opt_c, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %280

259:                                              ; preds = %256
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 @get_slave_flags(i8* %260)
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i32, i32* @stderr, align 4
  %266 = load i8*, i8** %8, align 8
  %267 = call i32 (i32, i8*, ...) @fprintf(i32 %265, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i8* %266)
  br label %341

268:                                              ; preds = %259
  %269 = load i8*, i8** %7, align 8
  %270 = load i8*, i8** %8, align 8
  %271 = call i32 @change_active(i8* %269, i8* %270)
  store i32 %271, i32* %12, align 4
  %272 = load i32, i32* %12, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load i32, i32* @stderr, align 4
  %276 = load i8*, i8** %7, align 8
  %277 = load i8*, i8** %8, align 8
  %278 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %276, i8* %277)
  br label %279

279:                                              ; preds = %274, %268
  br label %340

280:                                              ; preds = %256
  br label %281

281:                                              ; preds = %334, %280
  %282 = load i64, i64* @opt_d, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %307

284:                                              ; preds = %281
  %285 = load i8*, i8** %8, align 8
  %286 = call i32 @get_slave_flags(i8* %285)
  store i32 %286, i32* %11, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  %290 = load i32, i32* @stderr, align 4
  %291 = load i8*, i8** %8, align 8
  %292 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %291)
  %293 = load i32, i32* %11, align 4
  store i32 %293, i32* %12, align 4
  br label %334

294:                                              ; preds = %284
  %295 = load i8*, i8** %7, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = call i32 @release(i8* %295, i8* %296)
  store i32 %297, i32* %11, align 4
  %298 = load i32, i32* %11, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %294
  %301 = load i32, i32* @stderr, align 4
  %302 = load i8*, i8** %7, align 8
  %303 = load i8*, i8** %8, align 8
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %301, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i8* %302, i8* %303)
  %305 = load i32, i32* %11, align 4
  store i32 %305, i32* %12, align 4
  br label %306

306:                                              ; preds = %300, %294
  br label %333

307:                                              ; preds = %281
  %308 = load i8*, i8** %8, align 8
  %309 = load i32, i32* @slave_ifra, align 4
  %310 = call i32 @get_if_settings(i8* %308, i32 %309)
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %11, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %307
  %314 = load i32, i32* @stderr, align 4
  %315 = load i8*, i8** %8, align 8
  %316 = load i32, i32* %11, align 4
  %317 = call i8* @strerror(i32 %316)
  %318 = call i32 (i32, i8*, ...) @fprintf(i32 %314, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i8* %315, i8* %317)
  %319 = load i32, i32* %11, align 4
  store i32 %319, i32* %12, align 4
  br label %334

320:                                              ; preds = %307
  %321 = load i8*, i8** %7, align 8
  %322 = load i8*, i8** %8, align 8
  %323 = call i32 @enslave(i8* %321, i8* %322)
  store i32 %323, i32* %11, align 4
  %324 = load i32, i32* %11, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %320
  %327 = load i32, i32* @stderr, align 4
  %328 = load i8*, i8** %7, align 8
  %329 = load i8*, i8** %8, align 8
  %330 = call i32 (i32, i8*, ...) @fprintf(i32 %327, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %328, i8* %329)
  %331 = load i32, i32* %11, align 4
  store i32 %331, i32* %12, align 4
  br label %332

332:                                              ; preds = %326, %320
  br label %333

333:                                              ; preds = %332, %306
  br label %334

334:                                              ; preds = %333, %313, %289
  %335 = load i8**, i8*** %6, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i32 1
  store i8** %336, i8*** %6, align 8
  %337 = load i8*, i8** %335, align 8
  store i8* %337, i8** %8, align 8
  %338 = icmp ne i8* %337, null
  br i1 %338, label %281, label %339

339:                                              ; preds = %334
  br label %340

340:                                              ; preds = %339, %279
  br label %341

341:                                              ; preds = %340, %264, %209, %190, %181, %170, %161, %157, %141, %132, %118, %116, %107, %97, %91, %86, %71, %63
  %342 = load i64, i64* @skfd, align 8
  %343 = icmp sge i64 %342, 0
  br i1 %343, label %344, label %347

344:                                              ; preds = %341
  %345 = load i64, i64* @skfd, align 8
  %346 = call i32 @close(i64 %345)
  br label %347

347:                                              ; preds = %344, %341
  %348 = load i32, i32* %12, align 4
  ret i32 %348
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @if_print(i8*) #1

declare dso_local i32 @get_drv_info(i8*) #1

declare dso_local i32 @get_if_settings(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @v_print(i8*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i32) #1

declare dso_local i32 @get_slave_flags(i8*) #1

declare dso_local i32 @change_active(i8*, i8*) #1

declare dso_local i32 @release(i8*, i8*) #1

declare dso_local i32 @enslave(i8*, i8*) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
