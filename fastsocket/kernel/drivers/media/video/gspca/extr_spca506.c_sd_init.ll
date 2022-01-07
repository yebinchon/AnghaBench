; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca506.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca506.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"** Close Init *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.usb_device*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %4, i32 0, i32 0
  %6 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  store %struct.usb_device* %6, %struct.usb_device** %3, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %8 = call i32 @reg_w(%struct.usb_device* %7, i32 3, i32 0, i32 4)
  %9 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %10 = call i32 @reg_w(%struct.usb_device* %9, i32 3, i32 255, i32 3)
  %11 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %12 = call i32 @reg_w(%struct.usb_device* %11, i32 3, i32 0, i32 0)
  %13 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %14 = call i32 @reg_w(%struct.usb_device* %13, i32 3, i32 28, i32 1)
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = call i32 @reg_w(%struct.usb_device* %15, i32 3, i32 24, i32 1)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @spca506_SetNormeInput(%struct.gspca_dev* %17, i32 0, i32 0)
  %19 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %20 = call i32 @reg_w(%struct.usb_device* %19, i32 3, i32 28, i32 1)
  %21 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %22 = call i32 @reg_w(%struct.usb_device* %21, i32 3, i32 24, i32 1)
  %23 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %24 = call i32 @reg_w(%struct.usb_device* %23, i32 5, i32 0, i32 0)
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = call i32 @reg_w(%struct.usb_device* %25, i32 5, i32 239, i32 1)
  %27 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %28 = call i32 @reg_w(%struct.usb_device* %27, i32 5, i32 0, i32 193)
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = call i32 @reg_w(%struct.usb_device* %29, i32 5, i32 0, i32 194)
  %31 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %32 = call i32 @reg_w(%struct.usb_device* %31, i32 6, i32 24, i32 2)
  %33 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %34 = call i32 @reg_w(%struct.usb_device* %33, i32 6, i32 245, i32 17)
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = call i32 @reg_w(%struct.usb_device* %35, i32 6, i32 2, i32 18)
  %37 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %38 = call i32 @reg_w(%struct.usb_device* %37, i32 6, i32 251, i32 19)
  %39 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %40 = call i32 @reg_w(%struct.usb_device* %39, i32 6, i32 0, i32 20)
  %41 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %42 = call i32 @reg_w(%struct.usb_device* %41, i32 6, i32 164, i32 81)
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = call i32 @reg_w(%struct.usb_device* %43, i32 6, i32 64, i32 82)
  %45 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %46 = call i32 @reg_w(%struct.usb_device* %45, i32 6, i32 113, i32 83)
  %47 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %48 = call i32 @reg_w(%struct.usb_device* %47, i32 6, i32 64, i32 84)
  %49 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %50 = call i32 @reg_w(%struct.usb_device* %49, i32 3, i32 0, i32 4)
  %51 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %52 = call i32 @reg_w(%struct.usb_device* %51, i32 3, i32 0, i32 3)
  %53 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %54 = call i32 @reg_w(%struct.usb_device* %53, i32 3, i32 0, i32 4)
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = call i32 @reg_w(%struct.usb_device* %55, i32 3, i32 255, i32 3)
  %57 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %58 = call i32 @reg_w(%struct.usb_device* %57, i32 2, i32 0, i32 0)
  %59 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %60 = call i32 @reg_w(%struct.usb_device* %59, i32 3, i32 96, i32 0)
  %61 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %62 = call i32 @reg_w(%struct.usb_device* %61, i32 3, i32 24, i32 1)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @spca506_Initi2c(%struct.gspca_dev* %63)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %65, i32 8, i32 1)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %67, i32 192, i32 2)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %69, i32 51, i32 3)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %71, i32 0, i32 4)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %73, i32 0, i32 5)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %75, i32 13, i32 6)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %77, i32 240, i32 7)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %79, i32 152, i32 8)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %81, i32 3, i32 9)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %83, i32 128, i32 10)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %85, i32 71, i32 11)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %87, i32 72, i32 12)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %89, i32 0, i32 13)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %91, i32 3, i32 14)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %93, i32 42, i32 15)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %95, i32 0, i32 16)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %97, i32 12, i32 17)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %99, i32 184, i32 18)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %102 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %101, i32 1, i32 19)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %103, i32 0, i32 20)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %105, i32 0, i32 21)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %108 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %107, i32 0, i32 22)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %109, i32 0, i32 23)
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %112 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %111, i32 0, i32 24)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %113, i32 0, i32 25)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %115, i32 0, i32 26)
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %118 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %117, i32 0, i32 27)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %120 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %119, i32 0, i32 28)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %121, i32 0, i32 29)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %123, i32 0, i32 30)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %125, i32 161, i32 31)
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %128 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %127, i32 2, i32 64)
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %130 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %129, i32 255, i32 65)
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %132 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %131, i32 255, i32 66)
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %133, i32 255, i32 67)
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %136 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %135, i32 255, i32 68)
  %137 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %138 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %137, i32 255, i32 69)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %139, i32 255, i32 70)
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %141, i32 255, i32 71)
  %143 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %144 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %143, i32 255, i32 72)
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %146 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %145, i32 255, i32 73)
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %148 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %147, i32 255, i32 74)
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %149, i32 255, i32 75)
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %151, i32 255, i32 76)
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %153, i32 255, i32 77)
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %155, i32 255, i32 78)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %158 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %157, i32 255, i32 79)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %160 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %159, i32 255, i32 80)
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %162 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %161, i32 255, i32 81)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %163, i32 255, i32 82)
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %166 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %165, i32 255, i32 83)
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %167, i32 255, i32 84)
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %170 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %169, i32 255, i32 85)
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %172 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %171, i32 255, i32 86)
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %174 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %173, i32 255, i32 87)
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %175, i32 0, i32 88)
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %178 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %177, i32 84, i32 89)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %180 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %179, i32 7, i32 90)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %182 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %181, i32 131, i32 91)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %184 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %183, i32 0, i32 92)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %186 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %185, i32 0, i32 93)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %188 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %187, i32 0, i32 94)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %190 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %189, i32 0, i32 95)
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %192 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %191, i32 0, i32 96)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %193, i32 5, i32 97)
  %195 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %196 = call i32 @spca506_WriteI2c(%struct.gspca_dev* %195, i32 159, i32 98)
  %197 = load i32, i32* @D_STREAM, align 4
  %198 = call i32 @PDEBUG(i32 %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @reg_w(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @spca506_SetNormeInput(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @spca506_Initi2c(%struct.gspca_dev*) #1

declare dso_local i32 @spca506_WriteI2c(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
