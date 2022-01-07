; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4171_card.c_pccard_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_vrc4171_card.c_pccard_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }

@CARD_MAX_SLOTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I365_STATUS = common dso_local global i32 0, align 4
@I365_INTCTL = common dso_local global i32 0, align 4
@I365_PC_IOCARD = common dso_local global i32 0, align 4
@I365_CS_STSCHG = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@I365_CS_BVD1 = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@I365_CS_BVD2 = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@I365_CS_DETECT = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@I365_CS_WRPROT = common dso_local global i32 0, align 4
@SS_WRPROT = common dso_local global i32 0, align 4
@I365_CS_READY = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@I365_CS_POWERON = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@CARD_VOLTAGE_SENSE = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32*)* @pccard_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pccard_get_status(%struct.pcmcia_socket* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %11 = icmp eq %struct.pcmcia_socket* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CARD_MAX_SLOTS, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %12, %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %130

24:                                               ; preds = %18
  %25 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %26 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @I365_STATUS, align 4
  %30 = call i32 @exca_read_byte(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @I365_INTCTL, align 4
  %33 = call i32 @exca_read_byte(i32 %31, i32 %32)
  %34 = load i32, i32* @I365_PC_IOCARD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @I365_CS_STSCHG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @SS_STSCHG, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %42, %37
  br label %70

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @I365_CS_BVD1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @SS_BATDEAD, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %69

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @I365_CS_BVD1, align 4
  %59 = load i32, i32* @I365_CS_BVD2, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = load i32, i32* @I365_CS_BVD1, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* @SS_BATWARN, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %56
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @I365_CS_DETECT, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @I365_CS_DETECT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @SS_DETECT, align 4
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %70
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @I365_CS_WRPROT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @SS_WRPROT, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @I365_CS_READY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @SS_READY, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @I365_CS_POWERON, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @SS_POWERON, align 4
  %105 = load i32, i32* %9, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @CARD_VOLTAGE_SENSE, align 4
  %110 = call i32 @exca_read_byte(i32 %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  switch i32 %111, label %126 [
    i32 130, label %112
    i32 128, label %118
    i32 129, label %122
  ]

112:                                              ; preds = %107
  %113 = load i32, i32* @SS_3VCARD, align 4
  %114 = load i32, i32* @SS_XVCARD, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %127

118:                                              ; preds = %107
  %119 = load i32, i32* @SS_XVCARD, align 4
  %120 = load i32, i32* %9, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %127

122:                                              ; preds = %107
  %123 = load i32, i32* @SS_3VCARD, align 4
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %127

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %122, %118, %112
  %128 = load i32, i32* %9, align 4
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %21
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @exca_read_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
