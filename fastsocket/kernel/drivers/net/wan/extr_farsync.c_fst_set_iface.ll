; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_set_iface.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_set_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i32, i8* }
%struct.ifreq = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@portConfig = common dso_local global %struct.TYPE_9__* null, align 8
@V35 = common dso_local global i8* null, align 8
@V24 = common dso_local global i8* null, align 8
@X21 = common dso_local global i8* null, align 8
@X21D = common dso_local global i8* null, align 8
@T1 = common dso_local global i8* null, align 8
@E1 = common dso_local global i8* null, align 8
@EXTCLK = common dso_local global i32 0, align 4
@INTCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fst_card_info*, %struct.fst_port_info*, %struct.ifreq*)* @fst_set_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_set_iface(%struct.fst_card_info* %0, %struct.fst_port_info* %1, %struct.ifreq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fst_card_info*, align 8
  %6 = alloca %struct.fst_port_info*, align 8
  %7 = alloca %struct.ifreq*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %5, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %6, align 8
  store %struct.ifreq* %2, %struct.ifreq** %7, align 8
  %10 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %164

19:                                               ; preds = %3
  %20 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %21 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @copy_from_user(%struct.TYPE_8__* %8, i32 %24, i32 16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %164

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %164

37:                                               ; preds = %30
  %38 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %39 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ifreq*, %struct.ifreq** %7, align 8
  %42 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %124 [
    i32 130, label %45
    i32 131, label %58
    i32 129, label %71
    i32 128, label %84
    i32 132, label %97
    i32 134, label %110
    i32 133, label %123
  ]

45:                                               ; preds = %37
  %46 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** @V35, align 8
  %54 = call i32 @FST_WRW(%struct.fst_card_info* %46, i32 %52, i8* %53)
  %55 = load i8*, i8** @V35, align 8
  %56 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %57 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %127

58:                                               ; preds = %37
  %59 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** @V24, align 8
  %67 = call i32 @FST_WRW(%struct.fst_card_info* %59, i32 %65, i8* %66)
  %68 = load i8*, i8** @V24, align 8
  %69 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %70 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %127

71:                                               ; preds = %37
  %72 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** @X21, align 8
  %80 = call i32 @FST_WRW(%struct.fst_card_info* %72, i32 %78, i8* %79)
  %81 = load i8*, i8** @X21, align 8
  %82 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %83 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  br label %127

84:                                               ; preds = %37
  %85 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** @X21D, align 8
  %93 = call i32 @FST_WRW(%struct.fst_card_info* %85, i32 %91, i8* %92)
  %94 = load i8*, i8** @X21D, align 8
  %95 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %96 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %127

97:                                               ; preds = %37
  %98 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i8*, i8** @T1, align 8
  %106 = call i32 @FST_WRW(%struct.fst_card_info* %98, i32 %104, i8* %105)
  %107 = load i8*, i8** @T1, align 8
  %108 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %109 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %127

110:                                              ; preds = %37
  %111 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** @E1, align 8
  %119 = call i32 @FST_WRW(%struct.fst_card_info* %111, i32 %117, i8* %118)
  %120 = load i8*, i8** @E1, align 8
  %121 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %122 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %127

123:                                              ; preds = %37
  br label %127

124:                                              ; preds = %37
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %164

127:                                              ; preds = %123, %110, %97, %84, %71, %58, %45
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %150 [
    i32 136, label %130
    i32 135, label %140
  ]

130:                                              ; preds = %127
  %131 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @EXTCLK, align 4
  %139 = call i32 @FST_WRB(%struct.fst_card_info* %131, i32 %137, i32 %138)
  br label %153

140:                                              ; preds = %127
  %141 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @INTCLK, align 4
  %149 = call i32 @FST_WRB(%struct.fst_card_info* %141, i32 %147, i32 %148)
  br label %153

150:                                              ; preds = %127
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %164

153:                                              ; preds = %140, %130
  %154 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** @portConfig, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @FST_WRL(%struct.fst_card_info* %154, i32 %160, i32 %162)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %153, %150, %124, %34, %27, %16
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i64 @copy_from_user(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @FST_WRW(%struct.fst_card_info*, i32, i8*) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

declare dso_local i32 @FST_WRL(%struct.fst_card_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
