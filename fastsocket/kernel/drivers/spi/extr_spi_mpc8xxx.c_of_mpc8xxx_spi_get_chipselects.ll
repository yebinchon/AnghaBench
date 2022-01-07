; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_of_mpc8xxx_spi_get_chipselects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_mpc8xxx.c_of_mpc8xxx_spi_get_chipselects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.fsl_spi_platform_data*, i32 }
%struct.fsl_spi_platform_data = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.mpc8xxx_spi_probe_info = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid gpio #%d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't request gpio #%d: %d\0A\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"can't set output direction for gpio #%d: %d\0A\00", align 1
@mpc8xxx_spi_cs_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @of_mpc8xxx_spi_get_chipselects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_mpc8xxx_spi_get_chipselects(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.fsl_spi_platform_data*, align 8
  %6 = alloca %struct.mpc8xxx_spi_probe_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = call %struct.device_node* @dev_archdata_get_node(i32* %13)
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %16, align 8
  store %struct.fsl_spi_platform_data* %17, %struct.fsl_spi_platform_data** %5, align 8
  %18 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %5, align 8
  %19 = call %struct.mpc8xxx_spi_probe_info* @to_of_pinfo(%struct.fsl_spi_platform_data* %18)
  store %struct.mpc8xxx_spi_probe_info* %19, %struct.mpc8xxx_spi_probe_info** %6, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @of_gpio_count(%struct.device_node* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %5, align 8
  %26 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %187

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kmalloc(i32 %31, i32 %32)
  %34 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %35 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %37 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %187

43:                                               ; preds = %27
  %44 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %45 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(i32* %46, i32 -1, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kzalloc(i32 %55, i32 %56)
  %58 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %59 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %61 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %43
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %179

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %136, %67
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %139

72:                                               ; preds = %68
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @of_get_gpio_flags(%struct.device_node* %73, i32 %74, i32* %11)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @gpio_is_valid(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %72
  %80 = load %struct.device*, %struct.device** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  br label %146

84:                                               ; preds = %72
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.device*, %struct.device** %3, align 8
  %87 = call i32 @dev_name(%struct.device* %86)
  %88 = call i32 @gpio_request(i32 %85, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.device*, %struct.device** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %146

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %99 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %106 = and i32 %104, %105
  %107 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %108 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %114 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %121 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @gpio_direction_output(i32 %119, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %96
  %131 = load %struct.device*, %struct.device** %3, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %133)
  br label %146

135:                                              ; preds = %96
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %68

139:                                              ; preds = %68
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %5, align 8
  %142 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @mpc8xxx_spi_cs_control, align 4
  %144 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %5, align 8
  %145 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %2, align 4
  br label %187

146:                                              ; preds = %130, %91, %79
  br label %147

147:                                              ; preds = %169, %146
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %147
  %151 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %152 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @gpio_is_valid(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %150
  %161 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %162 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @gpio_free(i32 %167)
  br label %169

169:                                              ; preds = %160, %150
  %170 = load i32, i32* %8, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %8, align 4
  br label %147

172:                                              ; preds = %147
  %173 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %174 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %178 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %177, i32 0, i32 1
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %172, %64
  %180 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %181 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @kfree(i32* %182)
  %184 = load %struct.mpc8xxx_spi_probe_info*, %struct.mpc8xxx_spi_probe_info** %6, align 8
  %185 = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, %struct.mpc8xxx_spi_probe_info* %184, i32 0, i32 0
  store i32* null, i32** %185, align 8
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %179, %139, %40, %24
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.device_node* @dev_archdata_get_node(i32*) #1

declare dso_local %struct.mpc8xxx_spi_probe_info* @to_of_pinfo(%struct.fsl_spi_platform_data*) #1

declare dso_local i32 @of_gpio_count(%struct.device_node*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @of_get_gpio_flags(%struct.device_node*, i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
