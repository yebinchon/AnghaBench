; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_crypto_ctx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/nx/extr_nx.c_nx_crypto_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32** }
%struct.nx_crypto_ctx = type { i32, i32, i32*, %struct.nx_sg*, %struct.nx_csbcpb*, %struct.nx_sg*, %struct.nx_csbcpb*, i64 }
%struct.nx_sg = type { i32 }
%struct.nx_csbcpb = type { i32 }

@nx_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@NX_OKAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"Attempt to initialize NX crypto context while device is not available!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NX_MODE_AES_GCM = common dso_local global i64 0, align 8
@NX_MODE_AES_CCM = common dso_local global i64 0, align 8
@NX_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nx_crypto_ctx*, i64, i64)* @nx_crypto_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_crypto_ctx_init(%struct.nx_crypto_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nx_crypto_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.nx_crypto_ctx* %0, %struct.nx_crypto_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nx_driver, i32 0, i32 0, i32 0), align 8
  %9 = load i64, i64* @NX_OKAY, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %116

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @NX_MODE_AES_GCM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @NX_MODE_AES_CCM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19, %15
  %24 = load i32, i32* @NX_PAGE_SIZE, align 4
  %25 = mul nsw i32 4, %24
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %39

31:                                               ; preds = %19
  %32 = load i32, i32* @NX_PAGE_SIZE, align 4
  %33 = mul nsw i32 3, %32
  %34 = sext i32 %33 to i64
  %35 = add i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64 @kmalloc(i32 %42, i32 %43)
  %45 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %45, i32 0, i32 7
  store i64 %44, i64* %46, align 8
  %47 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %116

54:                                               ; preds = %39
  %55 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @NX_PAGE_SIZE, align 4
  %60 = call i64 @round_up(i32 %58, i32 %59)
  %61 = inttoptr i64 %60 to %struct.nx_csbcpb*
  %62 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %62, i32 0, i32 6
  store %struct.nx_csbcpb* %61, %struct.nx_csbcpb** %63, align 8
  %64 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %64, i32 0, i32 6
  %66 = load %struct.nx_csbcpb*, %struct.nx_csbcpb** %65, align 8
  %67 = bitcast %struct.nx_csbcpb* %66 to i32*
  %68 = load i32, i32* @NX_PAGE_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to %struct.nx_sg*
  %72 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %73 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %72, i32 0, i32 5
  store %struct.nx_sg* %71, %struct.nx_sg** %73, align 8
  %74 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %74, i32 0, i32 5
  %76 = load %struct.nx_sg*, %struct.nx_sg** %75, align 8
  %77 = bitcast %struct.nx_sg* %76 to i32*
  %78 = load i32, i32* @NX_PAGE_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = bitcast i32* %80 to %struct.nx_sg*
  %82 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %82, i32 0, i32 3
  store %struct.nx_sg* %81, %struct.nx_sg** %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @NX_MODE_AES_GCM, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %54
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @NX_MODE_AES_CCM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87, %54
  %92 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %92, i32 0, i32 3
  %94 = load %struct.nx_sg*, %struct.nx_sg** %93, align 8
  %95 = bitcast %struct.nx_sg* %94 to i32*
  %96 = load i32, i32* @NX_PAGE_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = bitcast i32* %98 to %struct.nx_csbcpb*
  %100 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %101 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %100, i32 0, i32 4
  store %struct.nx_csbcpb* %99, %struct.nx_csbcpb** %101, align 8
  br label %102

102:                                              ; preds = %91, %87
  %103 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %103, i32 0, i32 2
  store i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nx_driver, i32 0, i32 1), i32** %104, align 8
  %105 = load %struct.nx_crypto_ctx*, %struct.nx_crypto_ctx** %5, align 8
  %106 = getelementptr inbounds %struct.nx_crypto_ctx, %struct.nx_crypto_ctx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nx_driver, i32 0, i32 0, i32 1), align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i32*, i32** %108, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i32 %107, i32 %114, i32 12)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %102, %51, %11
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @round_up(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
