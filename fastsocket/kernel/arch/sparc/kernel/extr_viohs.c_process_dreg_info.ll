; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_dreg_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_dreg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, %struct.vio_dring_state*, i32, i32 }
%struct.vio_dring_state = type { i32, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.vio_dring_register = type { i32, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"GOT DRING_REG INFO ident[%llx] ndesc[%u] dsz[%u] opt[0x%x] ncookies[%u]\0A\00", align 1
@VIO_DR_STATE_RXREQ = common dso_local global i32 0, align 4
@VIO_DR_STATE_RXREG = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VIO_DRIVER_RX_RING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"DRING COOKIE(%d) [%016llx:%016llx]\0A\00", align 1
@VIO_SUBTYPE_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"SEND DRING_REG ACK ident[%llx]\0A\00", align 1
@VIO_SUBTYPE_NACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SEND DRING_REG NACK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_dring_register*)* @process_dreg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dreg_info(%struct.vio_driver_state* %0, %struct.vio_dring_register* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_dring_register*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_dring_register* %1, %struct.vio_dring_register** %5, align 8
  %9 = load i32, i32* @HS, align 4
  %10 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %11 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %14 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %17 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %20 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %23 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, i8*, ...) @viodbg(i32 %9, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %27 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VIO_DR_STATE_RXREQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %163

33:                                               ; preds = %2
  %34 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %35 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %163

41:                                               ; preds = %33
  %42 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %43 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %47 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @kzalloc(i32 %48, i32 %49)
  %51 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %52 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %54 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %41
  br label %163

58:                                               ; preds = %41
  %59 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %60 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %63 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %65 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %64, i32 0, i32 1
  %66 = load %struct.vio_dring_state*, %struct.vio_dring_state** %65, align 8
  %67 = load i64, i64* @VIO_DRIVER_RX_RING, align 8
  %68 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %66, i64 %67
  store %struct.vio_dring_state* %68, %struct.vio_dring_state** %6, align 8
  %69 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %70 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %73 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %75 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %78 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %80 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %83 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %124, %58
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %87 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %84
  %91 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %92 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %98 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = bitcast %struct.TYPE_3__* %96 to i8*
  %104 = bitcast %struct.TYPE_3__* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  %105 = load i32, i32* @HS, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %108 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %107, i32 0, i32 3
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %116 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %115, i32 0, i32 3
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 (i32, i8*, ...) @viodbg(i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %106, i64 %114, i64 %122)
  br label %124

124:                                              ; preds = %90
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %84

127:                                              ; preds = %84
  %128 = load i32, i32* @VIO_SUBTYPE_ACK, align 4
  %129 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %130 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %133 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %137 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @HS, align 4
  %139 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %140 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32, i8*, ...) @viodbg(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %141)
  %143 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %144 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = add i64 40, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %8, align 4
  %150 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %151 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %152 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %151, i32 0, i32 1
  %153 = load i32, i32* %8, align 4
  %154 = call i64 @send_ctrl(%struct.vio_driver_state* %150, %struct.TYPE_4__* %152, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %127
  br label %163

157:                                              ; preds = %127
  %158 = load i32, i32* @VIO_DR_STATE_RXREG, align 4
  %159 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %160 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  store i32 0, i32* %3, align 4
  br label %176

163:                                              ; preds = %156, %57, %40, %32
  %164 = load i32, i32* @VIO_SUBTYPE_NACK, align 4
  %165 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %166 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @HS, align 4
  %169 = call i32 (i32, i8*, ...) @viodbg(i32 %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %170 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %171 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %172 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %171, i32 0, i32 1
  %173 = call i64 @send_ctrl(%struct.vio_driver_state* %170, %struct.TYPE_4__* %172, i32 40)
  %174 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %175 = call i32 @handshake_failure(%struct.vio_driver_state* %174)
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %163, %157
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @viodbg(i32, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @send_ctrl(%struct.vio_driver_state*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
