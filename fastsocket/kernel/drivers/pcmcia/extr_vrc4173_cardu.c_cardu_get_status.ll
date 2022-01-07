; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4173_cardu.c_cardu_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cardu_sockets = common dso_local global i32* null, align 8
@IF_STATUS = common dso_local global i32 0, align 4
@CARD_PWR = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@READY = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@CARD_WP = common dso_local global i32 0, align 4
@SS_WRPROT = common dso_local global i32 0, align 4
@CARD_DETECT1 = common dso_local global i32 0, align 4
@CARD_DETECT2 = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@INT_GEN_CNT = common dso_local global i32 0, align 4
@CARD_TYPE_IO = common dso_local global i32 0, align 4
@STSCHG = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@BV_DETECT_MASK = common dso_local global i32 0, align 4
@BV_DETECT_GOOD = common dso_local global i32 0, align 4
@BV_DETECT_WARN = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@SKT_PRE_STATE = common dso_local global i32 0, align 4
@VOL_3V_CARD_DT = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@VOL_XV_CARD_DT = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@CB_CARD_DT = common dso_local global i32 0, align 4
@SS_CARDBUS = common dso_local global i32 0, align 4
@VOL_YV_CARD_DT = common dso_local global i32 0, align 4
@VOL_5V_CARD_DT = common dso_local global i32 0, align 4
@CCD20 = common dso_local global i32 0, align 4
@CCD10 = common dso_local global i32 0, align 4
@SS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @cardu_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardu_get_status(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** @cardu_sockets, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @IF_STATUS, align 4
  %15 = call i32 @exca_readb(i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CARD_PWR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @SS_POWERON, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @READY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @SS_READY, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @CARD_WP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @SS_WRPROT, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @CARD_DETECT1, align 4
  %45 = load i32, i32* @CARD_DETECT2, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = load i32, i32* @CARD_DETECT1, align 4
  %49 = load i32, i32* @CARD_DETECT2, align 4
  %50 = or i32 %48, %49
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @SS_DETECT, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %42
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @INT_GEN_CNT, align 4
  %59 = call i32 @exca_readb(i32* %57, i32 %58)
  %60 = load i32, i32* @CARD_TYPE_IO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @STSCHG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @SS_STSCHG, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %63
  br label %94

73:                                               ; preds = %56
  %74 = load i32, i32* @BV_DETECT_MASK, align 4
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @BV_DETECT_GOOD, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @BV_DETECT_WARN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @SS_BATWARN, align 4
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %92

88:                                               ; preds = %80
  %89 = load i32, i32* @SS_BATDEAD, align 4
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @SKT_PRE_STATE, align 4
  %97 = call i32 @cardbus_socket_readl(i32* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @VOL_3V_CARD_DT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* @SS_3VCARD, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @VOL_XV_CARD_DT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i32, i32* @SS_XVCARD, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %111, %106
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @CB_CARD_DT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @SS_CARDBUS, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %120, %115
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* @VOL_YV_CARD_DT, align 4
  %127 = load i32, i32* @VOL_XV_CARD_DT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @VOL_3V_CARD_DT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @VOL_5V_CARD_DT, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @CCD20, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @CCD10, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %125, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %124
  %140 = load i32, i32* @SS_PENDING, align 4
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %139, %124
  %144 = load i32, i32* %8, align 4
  %145 = load i32*, i32** %4, align 8
  store i32 %144, i32* %145, align 4
  ret i32 0
}

declare dso_local i32 @exca_readb(i32*, i32) #1

declare dso_local i32 @cardbus_socket_readl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
