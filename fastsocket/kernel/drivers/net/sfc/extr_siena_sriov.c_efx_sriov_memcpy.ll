; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_memcpy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_memcpy_req = type { i32, i32, i32, i32, i32, i32* }

@MCDI_CTL_SDU_LEN_MAX = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEMCPY_IN_RECORD = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_TO_RID = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_TO_ADDR_LO = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_TO_ADDR_HI = common dso_local global i32 0, align 4
@MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_FROM_RID = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_FROM_ADDR_LO = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_FROM_ADDR_HI = common dso_local global i32 0, align 4
@MEMCPY_RECORD_TYPEDEF_LENGTH = common dso_local global i32 0, align 4
@MC_CMD_MEMCPY_IN_RECORD_LEN = common dso_local global i32 0, align 4
@MC_CMD_MEMCPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_memcpy_req*, i32)* @efx_sriov_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_sriov_memcpy(%struct.efx_nic* %0, %struct.efx_memcpy_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_memcpy_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.efx_memcpy_req* %1, %struct.efx_memcpy_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = call i32 (...) @mb()
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @MC_CMD_MEMCPY_IN_LEN(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MCDI_CTL_SDU_LEN_MAX, align 4
  %20 = icmp ugt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %150

27:                                               ; preds = %3
  %28 = load i32, i32* @MCDI_CTL_SDU_LEN_MAX, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kzalloc(i32 %28, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %150

36:                                               ; preds = %27
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @MEMCPY_IN_RECORD, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @MCDI_SET_DWORD(i32* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %114, %36
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = icmp ugt i32 %43, 0
  br i1 %45, label %46, label %139

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_TO_RID, align 4
  %49 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %50 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MCDI_SET_DWORD(i32* %47, i32 %48, i32 %51)
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_TO_ADDR_LO, align 4
  %55 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %56 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MCDI_SET_DWORD(i32* %53, i32 %54, i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_TO_ADDR_HI, align 4
  %61 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %62 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 32
  %65 = call i32 @MCDI_SET_DWORD(i32* %59, i32 %60, i32 %64)
  %66 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %67 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %46
  %71 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %72 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %11, align 4
  %74 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %75 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %13, align 4
  %77 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %78 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 32
  store i32 %80, i32* %12, align 4
  br label %114

81:                                               ; preds = %46
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %84 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = add i32 %82, %85
  %87 = load i32, i32* @MCDI_CTL_SDU_LEN_MAX, align 4
  %88 = icmp ugt i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @WARN_ON(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i32, i32* @ENOBUFS, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %145

95:                                               ; preds = %81
  %96 = load i32, i32* @MC_CMD_MEMCPY_RECORD_TYPEDEF_RID_INLINE, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %103 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %106 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memcpy(i32* %101, i32* %104, i32 %107)
  %109 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %110 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %95, %70
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_FROM_RID, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @MCDI_SET_DWORD(i32* %115, i32 %116, i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_FROM_ADDR_LO, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @MCDI_SET_DWORD(i32* %119, i32 %120, i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_FROM_ADDR_HI, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @MCDI_SET_DWORD(i32* %123, i32 %124, i32 %125)
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* @MEMCPY_RECORD_TYPEDEF_LENGTH, align 4
  %129 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %130 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @MCDI_SET_DWORD(i32* %127, i32 %128, i32 %131)
  %133 = load %struct.efx_memcpy_req*, %struct.efx_memcpy_req** %6, align 8
  %134 = getelementptr inbounds %struct.efx_memcpy_req, %struct.efx_memcpy_req* %133, i32 1
  store %struct.efx_memcpy_req* %134, %struct.efx_memcpy_req** %6, align 8
  %135 = load i32, i32* @MC_CMD_MEMCPY_IN_RECORD_LEN, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %9, align 8
  br label %42

139:                                              ; preds = %42
  %140 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %141 = load i32, i32* @MC_CMD_MEMCPY, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %140, i32 %141, i32* %142, i32 %143, i32* null, i32 0, i32* null)
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %139, %92
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @kfree(i32* %146)
  %148 = call i32 (...) @mb()
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %145, %33, %24
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @MC_CMD_MEMCPY_IN_LEN(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
