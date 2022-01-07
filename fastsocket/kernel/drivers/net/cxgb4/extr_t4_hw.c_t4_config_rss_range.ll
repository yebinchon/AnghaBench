; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_config_rss_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_t4_hw.c_t4_config_rss_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.fw_rss_ind_tbl_cmd = type { i8*, i8*, i32, i8*, i8* }

@FW_RSS_IND_TBL_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST = common dso_local global i32 0, align 4
@FW_CMD_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_config_rss_range(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.fw_rss_ind_tbl_cmd, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load i32*, i32** %14, align 8
  store i32* %23, i32** %17, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %18, align 8
  %28 = call i32 @memset(%struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 40)
  %29 = load i32, i32* @FW_RSS_IND_TBL_CMD, align 4
  %30 = call i32 @FW_CMD_OP(i32 %29)
  %31 = load i32, i32* @FW_CMD_REQUEST, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FW_CMD_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @FW_RSS_IND_TBL_CMD_VIID(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i8* @htonl(i32 %37)
  %39 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = call i32 @FW_LEN16(%struct.fw_rss_ind_tbl_cmd* byval(%struct.fw_rss_ind_tbl_cmd) align 8 %19)
  %41 = call i8* @htonl(i32 %40)
  %42 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %115, %7
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @min(i32 %47, i32 32)
  store i32 %48, i32* %20, align 4
  %49 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 2
  store i32* %49, i32** %21, align 8
  %50 = load i32, i32* %20, align 4
  %51 = call i8* @htons(i32 %50)
  %52 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 1
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i8* @htons(i32 %53)
  %55 = getelementptr inbounds %struct.fw_rss_ind_tbl_cmd, %struct.fw_rss_ind_tbl_cmd* %19, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %99, %46
  %63 = load i32, i32* %20, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @FW_RSS_IND_TBL_CMD_IQ0(i32 %67)
  store i32 %68, i32* %22, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %17, align 8
  %71 = load i32*, i32** %18, align 8
  %72 = icmp uge i32* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32*, i32** %14, align 8
  store i32* %74, i32** %17, align 8
  br label %75

75:                                               ; preds = %73, %65
  %76 = load i32*, i32** %17, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @FW_RSS_IND_TBL_CMD_IQ1(i32 %77)
  %79 = load i32, i32* %22, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %22, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %17, align 8
  %83 = load i32*, i32** %18, align 8
  %84 = icmp uge i32* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32*, i32** %14, align 8
  store i32* %86, i32** %17, align 8
  br label %87

87:                                               ; preds = %85, %75
  %88 = load i32*, i32** %17, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FW_RSS_IND_TBL_CMD_IQ2(i32 %89)
  %91 = load i32, i32* %22, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %22, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %17, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = icmp uge i32* %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32*, i32** %14, align 8
  store i32* %98, i32** %17, align 8
  br label %99

99:                                               ; preds = %97, %87
  %100 = load i32, i32* %22, align 4
  %101 = call i8* @htonl(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %21, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %21, align 8
  store i32 %102, i32* %103, align 4
  %105 = load i32, i32* %20, align 4
  %106 = sub nsw i32 %105, 3
  store i32 %106, i32* %20, align 4
  br label %62

107:                                              ; preds = %62
  %108 = load %struct.adapter*, %struct.adapter** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @t4_wr_mbox(%struct.adapter* %108, i32 %109, %struct.fw_rss_ind_tbl_cmd* %19, i32 40, i32* null)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %8, align 4
  br label %117

115:                                              ; preds = %107
  br label %43

116:                                              ; preds = %43
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, i32* %8, align 4
  ret i32 %118
}

declare dso_local i32 @memset(%struct.fw_rss_ind_tbl_cmd*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @FW_CMD_OP(i32) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_VIID(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_rss_ind_tbl_cmd* byval(%struct.fw_rss_ind_tbl_cmd) align 8) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_IQ0(i32) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_IQ1(i32) #1

declare dso_local i32 @FW_RSS_IND_TBL_CMD_IQ2(i32) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_rss_ind_tbl_cmd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
