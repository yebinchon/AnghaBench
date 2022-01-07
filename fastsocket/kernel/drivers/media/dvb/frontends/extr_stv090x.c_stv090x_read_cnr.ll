; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_read_cnr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_read_cnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dvb_frontend = type { %struct.stv090x_state* }
%struct.stv090x_state = type { i32 }

@DSTATUS = common dso_local global i32 0, align 4
@LOCK_DEFINITIF_FIELD = common dso_local global i32 0, align 4
@NNOSPLHT1 = common dso_local global i32 0, align 4
@NOSPLHT_NORMED_FIELD = common dso_local global i32 0, align 4
@NNOSPLHT0 = common dso_local global i32 0, align 4
@stv090x_s2cn_tab = common dso_local global %struct.TYPE_4__* null, align 8
@NOSDATAT1 = common dso_local global i32 0, align 4
@NOSDATAT_UNNORMED_FIELD = common dso_local global i32 0, align 4
@NOSDATAT0 = common dso_local global i32 0, align 4
@stv090x_s1cn_tab = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv090x_read_cnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_read_cnr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv090x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.stv090x_state*, %struct.stv090x_state** %17, align 8
  store %struct.stv090x_state* %18, %struct.stv090x_state** %5, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %20 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %146 [
    i32 128, label %22
    i32 129, label %84
    i32 130, label %84
  ]

22:                                               ; preds = %2
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %24 = load i32, i32* @DSTATUS, align 4
  %25 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %28 = call i8* @STV090x_GETFIELD_Px(i32 %26, i32 %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %83

31:                                               ; preds = %22
  %32 = call i32 @msleep(i32 5)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %57, %31
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %38 = load i32, i32* @NNOSPLHT1, align 4
  %39 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NOSPLHT_NORMED_FIELD, align 4
  %42 = call i8* @STV090x_GETFIELD_Px(i32 %40, i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %45 = load i32, i32* @NNOSPLHT0, align 4
  %46 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @NOSPLHT_NORMED_FIELD, align 4
  %49 = call i8* @STV090x_GETFIELD_Px(i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @MAKEWORD16(i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = call i32 @msleep(i32 1)
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load i32, i32* %12, align 4
  %62 = sdiv i32 %61, 16
  store i32 %62, i32* %12, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_s2cn_tab, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %63)
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_s2cn_tab, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_s2cn_tab, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %69, %75
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %77, 65535
  %79 = load i32, i32* %14, align 4
  %80 = sdiv i32 %78, %79
  %81 = sub nsw i32 65535, %80
  %82 = load i32*, i32** %4, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %60, %22
  br label %147

84:                                               ; preds = %2, %2
  %85 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %86 = load i32, i32* @DSTATUS, align 4
  %87 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %90 = call i8* @STV090x_GETFIELD_Px(i32 %88, i32 %89)
  store i8* %90, i8** %13, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %145

93:                                               ; preds = %84
  %94 = call i32 @msleep(i32 5)
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %119, %93
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 16
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  %99 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %100 = load i32, i32* @NOSDATAT1, align 4
  %101 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @NOSDATAT_UNNORMED_FIELD, align 4
  %104 = call i8* @STV090x_GETFIELD_Px(i32 %102, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %11, align 4
  %106 = load %struct.stv090x_state*, %struct.stv090x_state** %5, align 8
  %107 = load i32, i32* @NOSDATAT0, align 4
  %108 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %106, i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @NOSDATAT_UNNORMED_FIELD, align 4
  %111 = call i8* @STV090x_GETFIELD_Px(i32 %109, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @MAKEWORD16(i32 %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = call i32 @msleep(i32 1)
  br label %119

119:                                              ; preds = %98
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %95

122:                                              ; preds = %95
  %123 = load i32, i32* %12, align 4
  %124 = sdiv i32 %123, 16
  store i32 %124, i32* %12, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_s1cn_tab, align 8
  %126 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %125)
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_s1cn_tab, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stv090x_s1cn_tab, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %131, %137
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %12, align 4
  %140 = mul nsw i32 %139, 65535
  %141 = load i32, i32* %14, align 4
  %142 = sdiv i32 %140, %141
  %143 = sub nsw i32 65535, %142
  %144 = load i32*, i32** %4, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %122, %84
  br label %147

146:                                              ; preds = %2
  br label %147

147:                                              ; preds = %146, %145, %83
  ret i32 0
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i8* @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
