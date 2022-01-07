; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m68k_serial = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.serial_struct = type { i64, i64, i64, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@S_USR_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@S_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m68k_serial*, %struct.serial_struct*)* @set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_serial_info(%struct.m68k_serial* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m68k_serial*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.serial_struct, align 8
  %7 = alloca %struct.m68k_serial, align 8
  %8 = alloca i32, align 4
  store %struct.m68k_serial* %0, %struct.m68k_serial** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %10 = icmp ne %struct.serial_struct* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EFAULT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %120

14:                                               ; preds = %2
  %15 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %16 = call i32 @copy_from_user(%struct.serial_struct* %6, %struct.serial_struct* %15, i32 40)
  %17 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %18 = bitcast %struct.m68k_serial* %7 to i8*
  %19 = bitcast %struct.m68k_serial* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 40, i1 false)
  %20 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %21 = call i32 @capable(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %78, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %27 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %57, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %34 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %41 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %57, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @S_USR_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %51 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @S_USR_MASK, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %49, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44, %37, %30, %23
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %120

60:                                               ; preds = %44
  %61 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %62 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @S_USR_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @S_USR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = or i32 %66, %70
  %72 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %73 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %77 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  br label %116

78:                                               ; preds = %14
  %79 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %80 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %120

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %90 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %92 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @S_FLAGS, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @S_FLAGS, align 4
  %100 = and i32 %98, %99
  %101 = or i32 %96, %100
  %102 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %103 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %107 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  %108 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %111 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %6, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %115 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %86, %60
  %117 = load %struct.m68k_serial*, %struct.m68k_serial** %4, align 8
  %118 = call i32 @startup(%struct.m68k_serial* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %116, %83, %57, %11
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @copy_from_user(%struct.serial_struct*, %struct.serial_struct*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @startup(%struct.m68k_serial*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
