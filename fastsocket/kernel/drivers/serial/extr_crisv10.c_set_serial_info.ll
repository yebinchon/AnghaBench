; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e100_serial = type { i64, i64, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.serial_struct = type { i64, i64, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ASYNC_FLAGS = common dso_local global i32 0, align 4
@ASYNC_LOW_LATENCY = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e100_serial*, %struct.serial_struct*)* @set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_serial_info(%struct.e100_serial* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e100_serial*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.serial_struct, align 8
  %7 = alloca %struct.e100_serial, align 8
  %8 = alloca i32, align 4
  store %struct.e100_serial* %0, %struct.e100_serial** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %10 = call i64 @copy_from_user(%struct.serial_struct* %6, %struct.serial_struct* %9, i32 32)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %136

15:                                               ; preds = %2
  %16 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %17 = bitcast %struct.e100_serial* %7 to i8*
  %18 = bitcast %struct.e100_serial* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 48, i1 false)
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %66, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %26 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %33 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ASYNC_USR_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %43 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ASYNC_USR_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %41, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %36, %29, %22
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %136

52:                                               ; preds = %36
  %53 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %54 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ASYNC_USR_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ASYNC_USR_MASK, align 4
  %62 = and i32 %60, %61
  %63 = or i32 %58, %62
  %64 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %65 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %121

66:                                               ; preds = %15
  %67 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %68 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %136

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %78 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 8
  %79 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %80 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ASYNC_FLAGS, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ASYNC_FLAGS, align 4
  %88 = and i32 %86, %87
  %89 = or i32 %84, %88
  %90 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %91 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %95 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %99 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %103 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %107 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 8
  %108 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %109 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ASYNC_LOW_LATENCY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %117 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %74, %52
  %122 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %123 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %130 = call i32 @change_speed(%struct.e100_serial* %129)
  br label %134

131:                                              ; preds = %121
  %132 = load %struct.e100_serial*, %struct.e100_serial** %4, align 8
  %133 = call i32 @startup(%struct.e100_serial* %132)
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %71, %49, %12
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @copy_from_user(%struct.serial_struct*, %struct.serial_struct*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @change_speed(%struct.e100_serial*) #1

declare dso_local i32 @startup(%struct.e100_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
