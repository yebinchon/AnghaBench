; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_gpio_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-cards.c_cx23885_gpio_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@GP0_IO = common dso_local global i32 0, align 4
@GPIO_15 = common dso_local global i32 0, align 4
@GPIO_14 = common dso_local global i32 0, align 4
@GPIO_2 = common dso_local global i32 0, align 4
@MC417_CTL = common dso_local global i32 0, align 4
@MC417_OEN = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@GPIO_ISM = common dso_local global i32 0, align 4
@GPIO_9 = common dso_local global i32 0, align 4
@GPIO_6 = common dso_local global i32 0, align 4
@GPIO_5 = common dso_local global i32 0, align 4
@GPIO_0 = common dso_local global i32 0, align 4
@GPIO_1 = common dso_local global i32 0, align 4
@GPIO_13 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_gpio_setup(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %3 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %218 [
    i32 145, label %6
    i32 139, label %9
    i32 138, label %17
    i32 136, label %20
    i32 147, label %53
    i32 137, label %62
    i32 140, label %71
    i32 150, label %80
    i32 149, label %89
    i32 134, label %98
    i32 152, label %98
    i32 151, label %98
    i32 133, label %98
    i32 128, label %107
    i32 129, label %121
    i32 143, label %137
    i32 142, label %137
    i32 144, label %137
    i32 146, label %137
    i32 131, label %159
    i32 132, label %159
    i32 130, label %181
    i32 135, label %199
    i32 141, label %199
    i32 148, label %215
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @GP0_IO, align 4
  %8 = call i32 @cx_set(i32 %7, i32 65537)
  br label %218

9:                                                ; preds = %1
  %10 = load i32, i32* @GP0_IO, align 4
  %11 = call i32 @cx_set(i32 %10, i32 327680)
  %12 = load i32, i32* @GP0_IO, align 4
  %13 = call i32 @cx_clear(i32 %12, i32 5)
  %14 = call i32 @msleep(i32 5)
  %15 = load i32, i32* @GP0_IO, align 4
  %16 = call i32 @cx_set(i32 %15, i32 327685)
  br label %218

17:                                               ; preds = %1
  %18 = load i32, i32* @GP0_IO, align 4
  %19 = call i32 @cx_set(i32 %18, i32 327685)
  br label %218

20:                                               ; preds = %1
  %21 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %22 = load i32, i32* @GPIO_15, align 4
  %23 = load i32, i32* @GPIO_14, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mc417_gpio_enable(%struct.cx23885_dev* %21, i32 %24, i32 1)
  %26 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %27 = load i32, i32* @GPIO_15, align 4
  %28 = load i32, i32* @GPIO_14, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mc417_gpio_clear(%struct.cx23885_dev* %26, i32 %29)
  %31 = call i32 @mdelay(i32 100)
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %33 = load i32, i32* @GPIO_15, align 4
  %34 = load i32, i32* @GPIO_14, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mc417_gpio_set(%struct.cx23885_dev* %32, i32 %35)
  %37 = call i32 @mdelay(i32 100)
  %38 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %39 = load i32, i32* @GPIO_2, align 4
  %40 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %38, i32 %39, i32 1)
  %41 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %42 = load i32, i32* @GPIO_2, align 4
  %43 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %41, i32 %42)
  %44 = call i32 @mdelay(i32 20)
  %45 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %46 = load i32, i32* @GPIO_2, align 4
  %47 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %45, i32 %46)
  %48 = call i32 @mdelay(i32 20)
  %49 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %50 = load i32, i32* @GPIO_2, align 4
  %51 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %49, i32 %50)
  %52 = call i32 @mdelay(i32 20)
  br label %218

53:                                               ; preds = %1
  %54 = load i32, i32* @GP0_IO, align 4
  %55 = call i32 @cx_set(i32 %54, i32 327680)
  %56 = call i32 @mdelay(i32 20)
  %57 = load i32, i32* @GP0_IO, align 4
  %58 = call i32 @cx_clear(i32 %57, i32 5)
  %59 = call i32 @mdelay(i32 20)
  %60 = load i32, i32* @GP0_IO, align 4
  %61 = call i32 @cx_set(i32 %60, i32 327685)
  br label %218

62:                                               ; preds = %1
  %63 = load i32, i32* @GP0_IO, align 4
  %64 = call i32 @cx_set(i32 %63, i32 327680)
  %65 = call i32 @mdelay(i32 20)
  %66 = load i32, i32* @GP0_IO, align 4
  %67 = call i32 @cx_clear(i32 %66, i32 5)
  %68 = call i32 @mdelay(i32 20)
  %69 = load i32, i32* @GP0_IO, align 4
  %70 = call i32 @cx_set(i32 %69, i32 327685)
  br label %218

71:                                               ; preds = %1
  %72 = load i32, i32* @GP0_IO, align 4
  %73 = call i32 @cx_set(i32 %72, i32 327680)
  %74 = call i32 @mdelay(i32 20)
  %75 = load i32, i32* @GP0_IO, align 4
  %76 = call i32 @cx_clear(i32 %75, i32 5)
  %77 = call i32 @mdelay(i32 20)
  %78 = load i32, i32* @GP0_IO, align 4
  %79 = call i32 @cx_set(i32 %78, i32 327685)
  br label %218

80:                                               ; preds = %1
  %81 = load i32, i32* @GP0_IO, align 4
  %82 = call i32 @cx_set(i32 %81, i32 983040)
  %83 = call i32 @mdelay(i32 20)
  %84 = load i32, i32* @GP0_IO, align 4
  %85 = call i32 @cx_clear(i32 %84, i32 15)
  %86 = call i32 @mdelay(i32 20)
  %87 = load i32, i32* @GP0_IO, align 4
  %88 = call i32 @cx_set(i32 %87, i32 983055)
  br label %218

89:                                               ; preds = %1
  %90 = load i32, i32* @GP0_IO, align 4
  %91 = call i32 @cx_set(i32 %90, i32 983040)
  %92 = call i32 @mdelay(i32 20)
  %93 = load i32, i32* @GP0_IO, align 4
  %94 = call i32 @cx_clear(i32 %93, i32 15)
  %95 = call i32 @mdelay(i32 20)
  %96 = load i32, i32* @GP0_IO, align 4
  %97 = call i32 @cx_set(i32 %96, i32 983055)
  br label %218

98:                                               ; preds = %1, %1, %1, %1
  %99 = load i32, i32* @GP0_IO, align 4
  %100 = call i32 @cx_set(i32 %99, i32 262144)
  %101 = call i32 @mdelay(i32 20)
  %102 = load i32, i32* @GP0_IO, align 4
  %103 = call i32 @cx_clear(i32 %102, i32 4)
  %104 = call i32 @mdelay(i32 20)
  %105 = load i32, i32* @GP0_IO, align 4
  %106 = call i32 @cx_set(i32 %105, i32 262148)
  br label %218

107:                                              ; preds = %1
  %108 = load i32, i32* @MC417_CTL, align 4
  %109 = call i32 @cx_write(i32 %108, i32 54)
  %110 = load i32, i32* @MC417_OEN, align 4
  %111 = call i32 @cx_write(i32 %110, i32 4096)
  %112 = load i32, i32* @MC417_RWD, align 4
  %113 = call i32 @cx_set(i32 %112, i32 2)
  %114 = call i32 @mdelay(i32 200)
  %115 = load i32, i32* @MC417_RWD, align 4
  %116 = call i32 @cx_clear(i32 %115, i32 2048)
  %117 = call i32 @mdelay(i32 200)
  %118 = load i32, i32* @MC417_RWD, align 4
  %119 = call i32 @cx_set(i32 %118, i32 2048)
  %120 = call i32 @mdelay(i32 200)
  br label %218

121:                                              ; preds = %1
  %122 = load i32, i32* @GP0_IO, align 4
  %123 = call i32 @cx_set(i32 %122, i32 262144)
  %124 = load i32, i32* @GP0_IO, align 4
  %125 = call i32 @cx_clear(i32 %124, i32 196612)
  %126 = call i32 @mdelay(i32 100)
  %127 = load i32, i32* @GP0_IO, align 4
  %128 = call i32 @cx_set(i32 %127, i32 262148)
  %129 = load i32, i32* @MC417_CTL, align 4
  %130 = call i32 @cx_write(i32 %129, i32 55)
  %131 = load i32, i32* @MC417_OEN, align 4
  %132 = call i32 @cx_write(i32 %131, i32 4096)
  %133 = load i32, i32* @MC417_RWD, align 4
  %134 = call i32 @cx_write(i32 %133, i32 49920)
  %135 = load i32, i32* @GPIO_ISM, align 4
  %136 = call i32 @cx_write(i32 %135, i32 0)
  br label %218

137:                                              ; preds = %1, %1, %1, %1
  %138 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %139 = load i32, i32* @GPIO_9, align 4
  %140 = load i32, i32* @GPIO_6, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @GPIO_5, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %138, i32 %143, i32 1)
  %145 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %146 = load i32, i32* @GPIO_9, align 4
  %147 = load i32, i32* @GPIO_6, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @GPIO_5, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %145, i32 %150)
  %152 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %153 = load i32, i32* @GPIO_9, align 4
  %154 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %152, i32 %153)
  %155 = call i32 @mdelay(i32 20)
  %156 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %157 = load i32, i32* @GPIO_9, align 4
  %158 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %156, i32 %157)
  br label %218

159:                                              ; preds = %1, %1
  %160 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %161 = load i32, i32* @GPIO_0, align 4
  %162 = load i32, i32* @GPIO_1, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @GPIO_2, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %160, i32 %165, i32 1)
  %167 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %168 = load i32, i32* @GPIO_1, align 4
  %169 = load i32, i32* @GPIO_2, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %167, i32 %170)
  %172 = call i32 @mdelay(i32 100)
  %173 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %174 = load i32, i32* @GPIO_0, align 4
  %175 = load i32, i32* @GPIO_1, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @GPIO_2, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %173, i32 %178)
  %180 = call i32 @mdelay(i32 100)
  br label %218

181:                                              ; preds = %1
  %182 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %183 = load i32, i32* @GPIO_0, align 4
  %184 = load i32, i32* @GPIO_1, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @cx23885_gpio_enable(%struct.cx23885_dev* %182, i32 %185, i32 1)
  %187 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %188 = load i32, i32* @GPIO_0, align 4
  %189 = load i32, i32* @GPIO_1, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @cx23885_gpio_clear(%struct.cx23885_dev* %187, i32 %190)
  %192 = call i32 @mdelay(i32 100)
  %193 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %194 = load i32, i32* @GPIO_0, align 4
  %195 = load i32, i32* @GPIO_1, align 4
  %196 = or i32 %194, %195
  %197 = call i32 @cx23885_gpio_set(%struct.cx23885_dev* %193, i32 %196)
  %198 = call i32 @mdelay(i32 100)
  br label %218

199:                                              ; preds = %1, %1
  %200 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %201 = load i32, i32* @GPIO_14, align 4
  %202 = load i32, i32* @GPIO_13, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @mc417_gpio_enable(%struct.cx23885_dev* %200, i32 %203, i32 1)
  %205 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %206 = load i32, i32* @GPIO_14, align 4
  %207 = load i32, i32* @GPIO_13, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @mc417_gpio_clear(%struct.cx23885_dev* %205, i32 %208)
  %210 = call i32 @mdelay(i32 100)
  %211 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %212 = load i32, i32* @GPIO_14, align 4
  %213 = call i32 @mc417_gpio_set(%struct.cx23885_dev* %211, i32 %212)
  %214 = call i32 @mdelay(i32 100)
  br label %218

215:                                              ; preds = %1
  %216 = load i32, i32* @GP0_IO, align 4
  %217 = call i32 @cx_set(i32 %216, i32 65537)
  br label %218

218:                                              ; preds = %1, %215, %199, %181, %159, %137, %121, %107, %98, %89, %80, %71, %62, %53, %20, %17, %9, %6
  ret void
}

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mc417_gpio_enable(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @mc417_gpio_clear(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @mc417_gpio_set(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_gpio_enable(%struct.cx23885_dev*, i32, i32) #1

declare dso_local i32 @cx23885_gpio_set(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx23885_gpio_clear(%struct.cx23885_dev*, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
