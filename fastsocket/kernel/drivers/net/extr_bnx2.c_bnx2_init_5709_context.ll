; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_init_5709_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_init_5709_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32*, i64* }

@BNX2_CTX_COMMAND_ENABLED = common dso_local global i32 0, align 4
@BNX2_CTX_COMMAND_MEM_INIT = common dso_local global i32 0, align 4
@BNX2_PAGE_BITS = common dso_local global i32 0, align 4
@BNX2_CTX_COMMAND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_DATA0 = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_DATA1 = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_CTRL = common dso_local global i32 0, align 4
@BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_init_5709_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_init_5709_context(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @BNX2_CTX_COMMAND_ENABLED, align 4
  %9 = load i32, i32* @BNX2_CTX_COMMAND_MEM_INIT, align 4
  %10 = or i32 %8, %9
  %11 = or i32 %10, 4096
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @BNX2_PAGE_BITS, align 4
  %13 = sub nsw i32 %12, 8
  %14 = shl i32 %13, 16
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %18 = load i32, i32* @BNX2_CTX_COMMAND, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BNX2_WR(%struct.bnx2* %17, i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %35, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %26 = load i32, i32* @BNX2_CTX_COMMAND, align 4
  %27 = call i32 @BNX2_RD(%struct.bnx2* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @BNX2_CTX_COMMAND_MEM_INIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %38

33:                                               ; preds = %24
  %34 = call i32 @udelay(i32 2)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %21

38:                                               ; preds = %32, %21
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @BNX2_CTX_COMMAND_MEM_INIT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %136

46:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %131, %46
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %134

53:                                               ; preds = %47
  %54 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %63, i32 0, i32 2
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %71 = call i32 @memset(i64 %69, i32 0, i32 %70)
  br label %75

72:                                               ; preds = %53
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %136

75:                                               ; preds = %62
  %76 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %77 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_DATA0, align 4
  %78 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %79 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @BNX2_WR(%struct.bnx2* %76, i32 %77, i32 %86)
  %88 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %89 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_DATA1, align 4
  %90 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 32
  %98 = call i32 @BNX2_WR(%struct.bnx2* %88, i32 %89, i32 %97)
  %99 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %100 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @BNX2_WR(%struct.bnx2* %99, i32 %100, i32 %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %119, %75
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 10
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %110 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL, align 4
  %111 = call i32 @BNX2_RD(%struct.bnx2* %109, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %122

117:                                              ; preds = %108
  %118 = call i32 @udelay(i32 5)
  br label %119

119:                                              ; preds = %117
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %105

122:                                              ; preds = %116, %105
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %122
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %47

134:                                              ; preds = %127, %47
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %134, %72, %43
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
