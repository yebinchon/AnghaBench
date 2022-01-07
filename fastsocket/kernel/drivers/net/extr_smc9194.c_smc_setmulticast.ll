; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc9194.c_smc_setmulticast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smc9194.c_smc_setmulticast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_mc_list = type { i32*, %struct.dev_mc_list* }

@__const.smc_setmulticast.invert3 = private unnamed_addr constant [8 x i8] c"\00\04\02\06\01\05\03\07", align 1
@MULTICAST1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.dev_mc_list*)* @smc_setmulticast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_setmulticast(i32 %0, i32 %1, %struct.dev_mc_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.dev_mc_list*, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.dev_mc_list* %2, %struct.dev_mc_list** %6, align 8
  %12 = bitcast [8 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.smc_setmulticast.invert3, i32 0, i32 0), i64 8, i1 false)
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %14 = call i32 @memset(i8* %13, i32 0, i32 8)
  %15 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  store %struct.dev_mc_list* %15, %struct.dev_mc_list** %9, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %57, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  %21 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %22 = icmp ne %struct.dev_mc_list* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  br label %63

24:                                               ; preds = %20
  %25 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %26 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %57

32:                                               ; preds = %24
  %33 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %34 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ether_crc_le(i32 6, i32* %35)
  %37 = and i32 %36, 63
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, 3
  %40 = and i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 1, %44
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, 7
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %45
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  br label %57

57:                                               ; preds = %32, %31
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  %60 = load %struct.dev_mc_list*, %struct.dev_mc_list** %9, align 8
  %61 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %60, i32 0, i32 1
  %62 = load %struct.dev_mc_list*, %struct.dev_mc_list** %61, align 8
  store %struct.dev_mc_list* %62, %struct.dev_mc_list** %9, align 8
  br label %16

63:                                               ; preds = %23, %16
  %64 = call i32 @SMC_SELECT_BANK(i32 3)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %81, %63
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %84

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @MULTICAST1, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @outb(i8 zeroext %72, i64 %79)
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %65

84:                                               ; preds = %65
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ether_crc_le(i32, i32*) #2

declare dso_local i32 @SMC_SELECT_BANK(i32) #2

declare dso_local i32 @outb(i8 zeroext, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
