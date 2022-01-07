; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_mac_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_mac_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@pm3393_ops = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmac* (i32*, i32)* @pm3393_mac_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmac* @pm3393_mac_create(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmac*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cmac* @kzalloc(i32 28, i32 %7)
  store %struct.cmac* %8, %struct.cmac** %6, align 8
  %9 = load %struct.cmac*, %struct.cmac** %6, align 8
  %10 = icmp ne %struct.cmac* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.cmac* null, %struct.cmac** %3, align 8
  br label %238

12:                                               ; preds = %2
  %13 = load %struct.cmac*, %struct.cmac** %6, align 8
  %14 = getelementptr inbounds %struct.cmac, %struct.cmac* %13, i32 0, i32 2
  store i32* @pm3393_ops, i32** %14, align 8
  %15 = load %struct.cmac*, %struct.cmac** %6, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i64 1
  %17 = bitcast %struct.cmac* %16 to %struct.TYPE_2__*
  %18 = load %struct.cmac*, %struct.cmac** %6, align 8
  %19 = getelementptr inbounds %struct.cmac, %struct.cmac* %18, i32 0, i32 0
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.cmac*, %struct.cmac** %6, align 8
  %22 = getelementptr inbounds %struct.cmac, %struct.cmac* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @PAUSE_TX, align 4
  %24 = load i32, i32* @PAUSE_RX, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.cmac*, %struct.cmac** %6, align 8
  %27 = getelementptr inbounds %struct.cmac, %struct.cmac* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @OFFSET(i32 1)
  %32 = call i32 @t1_tpi_write(i32* %30, i32 %31, i32 32768)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @OFFSET(i32 1)
  %35 = call i32 @t1_tpi_write(i32* %33, i32 %34, i32 0)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @OFFSET(i32 8968)
  %38 = call i32 @t1_tpi_write(i32* %36, i32 %37, i32 38912)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @OFFSET(i32 8965)
  %41 = call i32 @t1_tpi_write(i32* %39, i32 %40, i32 4097)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @OFFSET(i32 8992)
  %44 = call i32 @t1_tpi_write(i32* %42, i32 %43, i32 34816)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @OFFSET(i32 8993)
  %47 = call i32 @t1_tpi_write(i32* %45, i32 %46, i32 34816)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @OFFSET(i32 8994)
  %50 = call i32 @t1_tpi_write(i32* %48, i32 %49, i32 34816)
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @OFFSET(i32 8995)
  %53 = call i32 @t1_tpi_write(i32* %51, i32 %52, i32 34816)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @OFFSET(i32 8996)
  %56 = call i32 @t1_tpi_write(i32* %54, i32 %55, i32 34816)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @OFFSET(i32 8997)
  %59 = call i32 @t1_tpi_write(i32* %57, i32 %58, i32 34816)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @OFFSET(i32 8998)
  %62 = call i32 @t1_tpi_write(i32* %60, i32 %61, i32 34816)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @OFFSET(i32 8999)
  %65 = call i32 @t1_tpi_write(i32* %63, i32 %64, i32 34816)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @OFFSET(i32 9000)
  %68 = call i32 @t1_tpi_write(i32* %66, i32 %67, i32 34816)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @OFFSET(i32 9001)
  %71 = call i32 @t1_tpi_write(i32* %69, i32 %70, i32 34816)
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @OFFSET(i32 9002)
  %74 = call i32 @t1_tpi_write(i32* %72, i32 %73, i32 34816)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @OFFSET(i32 9003)
  %77 = call i32 @t1_tpi_write(i32* %75, i32 %76, i32 34816)
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @OFFSET(i32 9004)
  %80 = call i32 @t1_tpi_write(i32* %78, i32 %79, i32 34816)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @OFFSET(i32 9005)
  %83 = call i32 @t1_tpi_write(i32* %81, i32 %82, i32 34816)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @OFFSET(i32 9006)
  %86 = call i32 @t1_tpi_write(i32* %84, i32 %85, i32 34816)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @OFFSET(i32 9007)
  %89 = call i32 @t1_tpi_write(i32* %87, i32 %88, i32 34816)
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @OFFSET(i32 8973)
  %92 = call i32 @t1_tpi_write(i32* %90, i32 %91, i32 39936)
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @OFFSET(i32 8964)
  %95 = call i32 @t1_tpi_write(i32* %93, i32 %94, i32 514)
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @OFFSET(i32 12800)
  %98 = call i32 @t1_tpi_write(i32* %96, i32 %97, i32 32896)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @OFFSET(i32 12816)
  %101 = call i32 @t1_tpi_write(i32* %99, i32 %100, i32 0)
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @OFFSET(i32 12803)
  %104 = call i32 @t1_tpi_write(i32* %102, i32 %103, i32 0)
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @OFFSET(i32 12804)
  %107 = call i32 @t1_tpi_write(i32* %105, i32 %106, i32 64)
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @OFFSET(i32 12805)
  %110 = call i32 @t1_tpi_write(i32* %108, i32 %109, i32 716)
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @OFFSET(i32 12806)
  %113 = call i32 @t1_tpi_write(i32* %111, i32 %112, i32 409)
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @OFFSET(i32 12807)
  %116 = call i32 @t1_tpi_write(i32* %114, i32 %115, i32 576)
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @OFFSET(i32 12802)
  %119 = call i32 @t1_tpi_write(i32* %117, i32 %118, i32 0)
  %120 = load i32*, i32** %4, align 8
  %121 = call i32 @OFFSET(i32 12816)
  %122 = call i32 @t1_tpi_write(i32* %120, i32 %121, i32 1)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @OFFSET(i32 12808)
  %125 = call i32 @t1_tpi_write(i32* %123, i32 %124, i32 65535)
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @OFFSET(i32 12810)
  %128 = call i32 @t1_tpi_write(i32* %126, i32 %127, i32 65535)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @OFFSET(i32 12812)
  %131 = call i32 @t1_tpi_write(i32* %129, i32 %130, i32 65535)
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @OFFSET(i32 12814)
  %134 = call i32 @t1_tpi_write(i32* %132, i32 %133, i32 65535)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @OFFSET(i32 8704)
  %137 = call i32 @t1_tpi_write(i32* %135, i32 %136, i32 49152)
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @OFFSET(i32 8705)
  %140 = call i32 @t1_tpi_write(i32* %138, i32 %139, i32 0)
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @OFFSET(i32 8718)
  %143 = call i32 @t1_tpi_write(i32* %141, i32 %142, i32 0)
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @OFFSET(i32 8719)
  %146 = call i32 @t1_tpi_write(i32* %144, i32 %145, i32 256)
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @OFFSET(i32 8720)
  %149 = call i32 @t1_tpi_write(i32* %147, i32 %148, i32 3072)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @OFFSET(i32 8721)
  %152 = call i32 @t1_tpi_write(i32* %150, i32 %151, i32 1433)
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @OFFSET(i32 8717)
  %155 = call i32 @t1_tpi_write(i32* %153, i32 %154, i32 0)
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @OFFSET(i32 8705)
  %158 = call i32 @t1_tpi_write(i32* %156, i32 %157, i32 1)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @OFFSET(i32 8707)
  %161 = call i32 @t1_tpi_write(i32* %159, i32 %160, i32 65535)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @OFFSET(i32 8709)
  %164 = call i32 @t1_tpi_write(i32* %162, i32 %163, i32 65535)
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @OFFSET(i32 8713)
  %167 = call i32 @t1_tpi_write(i32* %165, i32 %166, i32 65535)
  %168 = load i32*, i32** %4, align 8
  %169 = call i32 @OFFSET(i32 8769)
  %170 = call i32 @t1_tpi_write(i32* %168, i32 %169, i32 -2)
  %171 = load i32*, i32** %4, align 8
  %172 = call i32 @OFFSET(i32 8770)
  %173 = call i32 @t1_tpi_write(i32* %171, i32 %172, i32 65535)
  %174 = load i32*, i32** %4, align 8
  %175 = call i32 @OFFSET(i32 8771)
  %176 = call i32 @t1_tpi_write(i32* %174, i32 %175, i32 8)
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @OFFSET(i32 8772)
  %179 = call i32 @t1_tpi_write(i32* %177, i32 %178, i32 8)
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @OFFSET(i32 8773)
  %182 = call i32 @t1_tpi_write(i32* %180, i32 %181, i32 8)
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @OFFSET(i32 8768)
  %185 = call i32 @t1_tpi_write(i32* %183, i32 %184, i32 5)
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @OFFSET(i32 8832)
  %188 = call i32 @t1_tpi_write(i32* %186, i32 %187, i32 8451)
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @OFFSET(i32 8836)
  %191 = call i32 @t1_tpi_write(i32* %189, i32 %190, i32 0)
  %192 = load i32*, i32** %4, align 8
  %193 = call i32 @OFFSET(i32 12928)
  %194 = call i32 @t1_tpi_write(i32* %192, i32 %193, i32 135)
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 @OFFSET(i32 12930)
  %197 = call i32 @t1_tpi_write(i32* %195, i32 %196, i32 31)
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @OFFSET(i32 12352)
  %200 = call i32 @t1_tpi_write(i32* %198, i32 %199, i32 3122)
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @OFFSET(i32 12365)
  %203 = call i32 @t1_tpi_write(i32* %201, i32 %202, i32 32768)
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @OFFSET(i32 8256)
  %206 = call i32 @t1_tpi_write(i32* %204, i32 %205, i32 1436)
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 @OFFSET(i32 8265)
  %209 = call i32 @t1_tpi_write(i32* %207, i32 %208, i32 1)
  %210 = load i32*, i32** %4, align 8
  %211 = call i32 @OFFSET(i32 8304)
  %212 = call i32 @t1_tpi_write(i32* %210, i32 %211, i32 0)
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @OFFSET(i32 8302)
  %215 = call i32 @t1_tpi_write(i32* %213, i32 %214, i32 0)
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @OFFSET(i32 8266)
  %218 = call i32 @t1_tpi_write(i32* %216, i32 %217, i32 65535)
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @OFFSET(i32 8267)
  %221 = call i32 @t1_tpi_write(i32* %219, i32 %220, i32 65535)
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 @OFFSET(i32 8268)
  %224 = call i32 @t1_tpi_write(i32* %222, i32 %223, i32 65535)
  %225 = load i32*, i32** %4, align 8
  %226 = call i32 @OFFSET(i32 8302)
  %227 = call i32 @t1_tpi_write(i32* %225, i32 %226, i32 9)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @OFFSET(i32 3)
  %230 = call i32 @t1_tpi_write(i32* %228, i32 %229, i32 0)
  %231 = load i32*, i32** %4, align 8
  %232 = call i32 @OFFSET(i32 256)
  %233 = call i32 @t1_tpi_write(i32* %231, i32 %232, i32 4080)
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @OFFSET(i32 257)
  %236 = call i32 @t1_tpi_write(i32* %234, i32 %235, i32 3855)
  %237 = load %struct.cmac*, %struct.cmac** %6, align 8
  store %struct.cmac* %237, %struct.cmac** %3, align 8
  br label %238

238:                                              ; preds = %12, %11
  %239 = load %struct.cmac*, %struct.cmac** %3, align 8
  ret %struct.cmac* %239
}

declare dso_local %struct.cmac* @kzalloc(i32, i32) #1

declare dso_local i32 @t1_tpi_write(i32*, i32, i32) #1

declare dso_local i32 @OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
