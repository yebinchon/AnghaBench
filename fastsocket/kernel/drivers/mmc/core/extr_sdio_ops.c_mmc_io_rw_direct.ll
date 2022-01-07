; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_ops.c_mmc_io_rw_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_ops.c_mmc_io_rw_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SD_IO_RW_DIRECT = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R5 = common dso_local global i32 0, align 4
@MMC_RSP_R5 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@R5_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R5_FUNCTION_NUMBER = common dso_local global i32 0, align 4
@R5_OUT_OF_RANGE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_io_rw_direct(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mmc_command, align 8
  %15 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %17 = icmp ne %struct.mmc_card* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ugt i32 %21, 7
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, -131072
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %147

31:                                               ; preds = %6
  %32 = call i32 @memset(%struct.mmc_command* %14, i32 0, i32 24)
  %33 = load i32, i32* @SD_IO_RW_DIRECT, align 4
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 -2147483648, i32 0
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 28
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br label %50

50:                                               ; preds = %47, %31
  %51 = phi i1 [ false, %31 ], [ %49, %47 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 134217728, i32 0
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %11, align 4
  %58 = shl i32 %57, 9
  %59 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @MMC_RSP_SPI_R5, align 4
  %67 = load i32, i32* @MMC_RSP_R5, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MMC_CMD_AC, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %73 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mmc_wait_for_cmd(i32 %74, %struct.mmc_command* %14, i32 0)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %50
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %7, align 4
  br label %147

80:                                               ; preds = %50
  %81 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @mmc_host_is_spi(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %121

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @R5_ERROR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %147

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @R5_FUNCTION_NUMBER, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %147

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @R5_OUT_OF_RANGE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* @ERANGE, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %7, align 4
  br label %147

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32*, i32** %13, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = load %struct.mmc_card*, %struct.mmc_card** %8, align 8
  %126 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @mmc_host_is_spi(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 8
  %136 = and i32 %135, 255
  %137 = load i32*, i32** %13, align 8
  store i32 %136, i32* %137, align 4
  br label %145

138:                                              ; preds = %124
  %139 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 255
  %144 = load i32*, i32** %13, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %138, %130
  br label %146

146:                                              ; preds = %145, %121
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %146, %117, %106, %95, %78, %28
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_command*, i32, i32) #1

declare dso_local i32 @mmc_wait_for_cmd(i32, %struct.mmc_command*, i32) #1

declare dso_local i64 @mmc_host_is_spi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
