; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_interface.c_pnp_set_current_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/extr_interface.c_pnp_set_current_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pnp_dev = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pnp_dev*)* }

@PNP_ATTACHED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"in use; can't configure\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"activate\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@pnp_res_mutex = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pnp_set_current_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_set_current_resources(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pnp_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.pnp_dev* @to_pnp_dev(%struct.device* %15)
  store %struct.pnp_dev* %16, %struct.pnp_dev** %10, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %19 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PNP_ATTACHED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %28 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %27, i32 0, i32 3
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %212

30:                                               ; preds = %4
  %31 = load i8*, i8** %11, align 8
  %32 = call i8* @skip_spaces(i8* %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i32 @strnicmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %38 = call i32 @pnp_disable_dev(%struct.pnp_dev* %37)
  store i32 %38, i32* %12, align 4
  br label %212

39:                                               ; preds = %30
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @strnicmp(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %45 = call i32 @pnp_activate_dev(%struct.pnp_dev* %44)
  store i32 %45, i32* %12, align 4
  br label %212

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strnicmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %52 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %212

56:                                               ; preds = %50
  %57 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %58 = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %57)
  store i32 %58, i32* %12, align 4
  br label %212

59:                                               ; preds = %46
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @strnicmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %65 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %212

69:                                               ; preds = %63
  %70 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %71 = call i32 @pnp_init_resources(%struct.pnp_dev* %70)
  %72 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %73 = call i32 @pnp_auto_config_dev(%struct.pnp_dev* %72)
  store i32 %73, i32* %12, align 4
  br label %212

74:                                               ; preds = %59
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @strnicmp(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %74
  %79 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %80 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %212

84:                                               ; preds = %78
  %85 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %86 = call i32 @pnp_init_resources(%struct.pnp_dev* %85)
  br label %212

87:                                               ; preds = %74
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @strnicmp(i8* %88, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %87
  %92 = call i32 @mutex_lock(i32* @pnp_res_mutex)
  %93 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %94 = call i64 @pnp_can_read(%struct.pnp_dev* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %98 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.pnp_dev*)*, i32 (%struct.pnp_dev*)** %100, align 8
  %102 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %103 = call i32 %101(%struct.pnp_dev* %102)
  br label %104

104:                                              ; preds = %96, %91
  %105 = call i32 @mutex_unlock(i32* @pnp_res_mutex)
  br label %212

106:                                              ; preds = %87
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @strnicmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %211, label %110

110:                                              ; preds = %106
  %111 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %112 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %212

116:                                              ; preds = %110
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  store i8* %118, i8** %11, align 8
  %119 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %120 = call i32 @pnp_init_resources(%struct.pnp_dev* %119)
  %121 = call i32 @mutex_lock(i32* @pnp_res_mutex)
  br label %122

122:                                              ; preds = %116, %148, %177, %186, %199
  %123 = load i8*, i8** %11, align 8
  %124 = call i8* @skip_spaces(i8* %123)
  store i8* %124, i8** %11, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @strnicmp(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 2)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %122
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 2
  %131 = call i8* @skip_spaces(i8* %130)
  store i8* %131, i8** %11, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @simple_strtoul(i8* %132, i8** %11, i32 0)
  store i32 %133, i32* %13, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = call i8* @skip_spaces(i8* %134)
  store i8* %135, i8** %11, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 45
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load i8*, i8** %11, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = call i8* @skip_spaces(i8* %142)
  store i8* %143, i8** %11, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 @simple_strtoul(i8* %144, i8** %11, i32 0)
  store i32 %145, i32* %14, align 4
  br label %148

146:                                              ; preds = %128
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %146, %140
  %149 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @pnp_add_io_resource(%struct.pnp_dev* %149, i32 %150, i32 %151, i32 0)
  br label %122

153:                                              ; preds = %122
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @strnicmp(i8* %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %182, label %157

157:                                              ; preds = %153
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = call i8* @skip_spaces(i8* %159)
  store i8* %160, i8** %11, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = call i32 @simple_strtoul(i8* %161, i8** %11, i32 0)
  store i32 %162, i32* %13, align 4
  %163 = load i8*, i8** %11, align 8
  %164 = call i8* @skip_spaces(i8* %163)
  store i8* %164, i8** %11, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 45
  br i1 %168, label %169, label %175

169:                                              ; preds = %157
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = call i8* @skip_spaces(i8* %171)
  store i8* %172, i8** %11, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @simple_strtoul(i8* %173, i8** %11, i32 0)
  store i32 %174, i32* %14, align 4
  br label %177

175:                                              ; preds = %157
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %175, %169
  %178 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %178, i32 %179, i32 %180, i32 0)
  br label %122

182:                                              ; preds = %153
  %183 = load i8*, i8** %11, align 8
  %184 = call i32 @strnicmp(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 3)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = load i8*, i8** %11, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = call i8* @skip_spaces(i8* %188)
  store i8* %189, i8** %11, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @simple_strtoul(i8* %190, i8** %11, i32 0)
  store i32 %191, i32* %13, align 4
  %192 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @pnp_add_irq_resource(%struct.pnp_dev* %192, i32 %193, i32 0)
  br label %122

195:                                              ; preds = %182
  %196 = load i8*, i8** %11, align 8
  %197 = call i32 @strnicmp(i8* %196, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %195
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 3
  %202 = call i8* @skip_spaces(i8* %201)
  store i8* %202, i8** %11, align 8
  %203 = load i8*, i8** %11, align 8
  %204 = call i32 @simple_strtoul(i8* %203, i8** %11, i32 0)
  store i32 %204, i32* %13, align 4
  %205 = load %struct.pnp_dev*, %struct.pnp_dev** %10, align 8
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @pnp_add_dma_resource(%struct.pnp_dev* %205, i32 %206, i32 0)
  br label %122

208:                                              ; preds = %195
  br label %209

209:                                              ; preds = %208
  %210 = call i32 @mutex_unlock(i32* @pnp_res_mutex)
  br label %212

211:                                              ; preds = %106
  br label %212

212:                                              ; preds = %211, %209, %115, %104, %84, %83, %69, %68, %56, %55, %43, %36, %24
  %213 = load i32, i32* %12, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* %12, align 4
  store i32 %216, i32* %5, align 4
  br label %220

217:                                              ; preds = %212
  %218 = load i64, i64* %9, align 8
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %217, %215
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local %struct.pnp_dev* @to_pnp_dev(%struct.device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @pnp_disable_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_activate_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_auto_config_dev(%struct.pnp_dev*) #1

declare dso_local i32 @pnp_init_resources(%struct.pnp_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @pnp_can_read(%struct.pnp_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @pnp_add_io_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_add_irq_resource(%struct.pnp_dev*, i32, i32) #1

declare dso_local i32 @pnp_add_dma_resource(%struct.pnp_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
